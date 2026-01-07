# Get Word Count from files without including multi-line comments inside <!-- -->

$files = @(
    [PSCustomObject]@{ Name = "1_business_case.md"; Limit = 1000 }
    [PSCustomObject]@{ Name = "2_business_analysis_methodology.md"; Limit = 800 }
    [PSCustomObject]@{ Name = "3_project_charter.md"; Limit = 1000 }
    [PSCustomObject]@{ Name = "4_risk_management_plan.md"; Limit = 600 }
    [PSCustomObject]@{ Name = "5_communication_plan.md"; Limit = 800 }
    [PSCustomObject]@{ Name = "6_justification_statement.md"; Limit = 800 }
)

$totalWordCount = 0
$totalLimit = 0

foreach ($file in $files)
{
    # Read the file content
    $content = Get-Content "$PSSCriptRoot\mdbook\src\$($file.Name)" -Raw

    # Remove HTML comments (<!-- ... -->)
    $contentWithoutComments = $content -replace '<!--[\s\S]*?-->', ''

    # Remove <style> tags and their content
    $contentWithoutComments = $contentWithoutComments -replace '<style[\s\S]*?</style>', ''

    # Remove mermaid code blocks (```mermaid ... ```)
    $contentWithoutComments = $contentWithoutComments -replace '```mermaid[\s\S]*?```', ''

    # Remove log blocks (```log ... ```)
    $contentWithoutComments = $contentWithoutComments -replace '```log[\s\S]*?```', ''

    # Remove python code blocks (```python ... ```)
    $contentWithoutComments = $contentWithoutComments -replace '```python[\s\S]*?```', ''

    # Count words after removing comments
    $wordCount = ($contentWithoutComments | Measure-Object -Word).Words

    Write-Host "File: $($file.Name) Word Count: $wordCount/$($file.Limit)"

    if ($wordCount -gt $($file.Limit))
    {
        $wordsOverChapterLimit = $wordCount - $($file.Limit)
        Write-Host "Oops: Chapter Word Count > Word Limit by $wordsOverChapterLimit words" -ForeGroundColor "Red"
    }

    # calculate total word count
    $totalWordCount += $wordCount
    $totalLimit += $file.Limit
}

Write-Host ""
Write-Host "Total Word Count: $totalWordCount/$totalLimit"

if ($totalWordCount -le $totalLimit)
{
    Write-Host "You're still under - Keep Going! You can do it!"
} else
{
    Write-Host "Whoops!! Wordcount exceeded - Time to get Editing!!"
}
