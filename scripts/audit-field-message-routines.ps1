param(
    [string]$ProjectRoot = (Split-Path -Parent $PSScriptRoot),
    [string[]]$Banks = @('15', '1C', '1D', '1E'),
    [string]$NamePattern = '.',
    [switch]$Summary
)

$labelsByBank = @{}
foreach ($bank in $Banks) {
    $labelsByBank[$bank] = Get-Content (Join-Path $ProjectRoot 'config/labels.tsv') |
        Where-Object { $_ -and -not $_.StartsWith('#') } |
        ForEach-Object {
            $fields = $_ -split "`t", 5
            if ($fields[0] -eq $bank -and $fields[3] -in @('Code', 'Function')) {
                [pscustomobject]@{
                    Address = [Convert]::ToInt32($fields[1], 16)
                    Name = $fields[2]
                }
            }
        } |
        Sort-Object Address
}

$messages = @{}
Get-Content (Join-Path $ProjectRoot 'analysis/text.tsv') | Select-Object -Skip 1 | ForEach-Object {
    $fields = $_ -split "`t", 9
    $messages[$fields[0]] = [pscustomobject]@{
        TextId = $fields[0]
        Text = $fields[8]
    }
}

$results = foreach ($bank in $Banks) {
    foreach ($line in Get-Content (Join-Path $ProjectRoot "src/banks/bank_$bank.asm")) {
        $bytesMatch = [regex]::Match($line, 'db\s+\$([0-9A-F]{2}),\$([0-9A-B])B')
        $addressMatch = [regex]::Match($line, ';\s+([0-9A-F]{4})\s')
        if (-not $bytesMatch.Success -or -not $addressMatch.Success) {
            continue
        }

        $callAddress = [Convert]::ToInt32($addressMatch.Groups[1].Value, 16)
        $textId = '0{0}{1}' -f $bytesMatch.Groups[2].Value, $bytesMatch.Groups[1].Value
        $message = $messages[$textId]
        if ($null -eq $message) {
            continue
        }
        $routine = $labelsByBank[$bank] |
            Where-Object Address -le $callAddress |
            Select-Object -Last 1

        [pscustomobject]@{
            Bank = $bank
            RoutineAddress = '{0:X4}' -f $routine.Address
            RoutineName = $routine.Name
            CallAddress = '{0:X4}' -f $callAddress
            TextId = $message.TextId
            Text = $message.Text
        }
    }
}

$filteredResults = @($results | Where-Object RoutineName -Match $NamePattern)
if ($Summary) {
    $filteredResults |
        Group-Object Bank, RoutineAddress, RoutineName |
        ForEach-Object {
            $first = $_.Group | Sort-Object CallAddress | Select-Object -First 1
            [pscustomobject]@{
                Bank = $first.Bank
                RoutineAddress = $first.RoutineAddress
                RoutineName = $first.RoutineName
                TextIds = ($_.Group.TextId | Sort-Object -Unique) -join ','
                FirstText = $first.Text
            }
        } |
        Sort-Object Bank, RoutineAddress |
        Format-Table Bank, RoutineAddress, RoutineName, TextIds, FirstText -Wrap
} else {
    $filteredResults |
        Sort-Object Bank, RoutineAddress, CallAddress |
        Format-Table Bank, RoutineAddress, RoutineName, CallAddress, TextId, Text -Wrap
}