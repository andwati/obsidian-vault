#!/bin/bash

# Define the folder path
FolderPath="~/GitHub/obsidian-vault"

# Change directory to the repository folder
cd "$FolderPath"

# Check if the working tree is clean
if git diff-index --quiet HEAD -- || git diff-files --quiet; then
    echo "Working tree is clean. Skipping commit and pushing changes."
    git push
else
    # Get the current date in the desired format (Day - Date)
    CommitMessage="Obsidian sync $(date +'%A - %Y-%m-%d %H:%M:%S')"

    # Commit the changes
    git add .
    git commit -m "$CommitMessage"

    # Push the changes
    git push
fi
