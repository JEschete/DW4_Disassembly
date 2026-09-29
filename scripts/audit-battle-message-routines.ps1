param(
    [string]$ProjectRoot = (Split-Path -Parent $PSScriptRoot)
)

$labels = Get-Content (Join-Path $ProjectRoot 'config/labels.tsv') |
    Where-Object { $_ -and -not $_.StartsWith('#') } |
    ForEach-Object {
        $fields = $_ -split "`t", 5
        if ($fields[0] -eq '11' -and $fields[3] -in @('Code', 'Function')) {
            [pscustomobject]@{
                Address = [Convert]::ToInt32($fields[1], 16)
                Name = $fields[2]
                Note = $fields[4]
            }
        }
    } |
    Sort-Object Address

$messages = @{}
Get-Content (Join-Path $ProjectRoot 'analysis/text.tsv') | Select-Object -Skip 1 | ForEach-Object {
    $fields = $_ -split "`t", 9
    $messages[$fields[0]] = [pscustomobject]@{
        TextId = $fields[0]
        Text = $fields[8]
    }
}

$results = foreach ($line in Get-Content (Join-Path $ProjectRoot 'src/banks/bank_11.asm')) {
    if ($line -notmatch 'db\s+\$([0-9A-F]{2}),\$D3,\$([0-9A-F]{2})' -or
        $line -notmatch ';\s+([0-9A-F]{4})\s') {
        continue
    }

    $callAddress = [Convert]::ToInt32($Matches[1], 16)
    $bytesMatch = [regex]::Match($line, 'db\s+\$([0-9A-F]{2}),\$D3,\$([0-9A-F]{2})')
    $group = [Convert]::ToInt32($bytesMatch.Groups[1].Value, 16) -band 3
    if ($group -gt 1) {
        continue
    }
    $index = $bytesMatch.Groups[2].Value
    $key = '{0:X2}{1}' -f $group, $index
    $message = $messages[$key]
    $routine = $labels | Where-Object Address -le $callAddress | Select-Object -Last 1

    [pscustomobject]@{
        RoutineAddress = '{0:X4}' -f $routine.Address
        RoutineName = $routine.Name
        CallAddress = '{0:X4}' -f $callAddress
        TextId = $message.TextId
        Text = $message.Text
    }
}

$results | Sort-Object RoutineAddress, CallAddress |
    Format-Table RoutineAddress, RoutineName, CallAddress, TextId, Text -Wrap