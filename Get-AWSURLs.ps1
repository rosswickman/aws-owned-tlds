$htmlFile = 'content.html'
$urlFile = 'urls.txt'
$cleanFile = 'clean.csv'
$regex = '>\..*?<'
$tlds = 'AWS-Owned-TLDs.csv'
Function Get-TLDs {

    $site = iwr 'https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html'
    $site.Content | Out-File -Path $htmlFile

    select-string -Path $htmlFile -Pattern $regex -AllMatches -CaseSensitive | % { $_.Matches } | % { $_.Value } > $urlFile
    select-string -Path $urlFile -Pattern $regex -AllMatches | % { $_.Matches } | % { $_.Value } > $cleanFile

    $replacements = @('\(([^\)]+)\)', '>', '<', ' ')

    ForEach ($r in $replacements){
        (Get-Content $cleanFile) | % {
            $_ -replace $r, ''
        } | Set-Content $cleanfile
    }

    Get-AWSUrl
}
Function Get-AWSUrl {

    if (Test-Path $tlds) { Remove-Item $tlds }
    Add-Content -Path $tlds -Value "URL, Destination"

    Import-Csv .\clean.csv -Header Site | % {
        $url = 'http://aws' + $_.Site
        try {

            Write-Verbose "Attempting to get response from $url" -Verbose

            $request = iwr $url

            Add-Content -Path $tlds -Value "$url, $($request.BaseResponse.RequestMessage.RequestUri.AbsoluteUri)"

        } catch {

            Write-Verbose "Bad request for $url" -Verbose

            Add-Content -Path $tlds -Value "$url, BAD REQUEST"

        }
    }

}

Get-TLDs
