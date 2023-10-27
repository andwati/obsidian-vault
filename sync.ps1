# Define the folder path
$FolderPath = "C:\Users\Ian\GitHub\obsidian-vault"

# Change directory to the repository folder
Set-Location -Path $FolderPath

# Check if the working tree is clean
$IsClean = (git diff-index --quiet HEAD --) -or (git diff-files --quiet)

if ($IsClean) {
    Write-Host "Working tree is clean. Skipping commit and pushing changes."
    git push
} else {
    # Get the current date in the desired format (Day - Date)
    $CommitMessage = "Obsidian sync $(Get-Date -Format 'dddd - yyyy-MM-dd HH:mm:ss')"

    # Commit the changes
    git add .
    git commit -m $CommitMessage

    # Push the changes
    git push
}
