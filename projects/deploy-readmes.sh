#!/bin/bash

# Array of project tasks
tasks=(
  "Set Up a Web App in the Cloud"
  "Connect a GitHub Repo with AWS"
  "Secure Packages with CodeArtifact"
  "Continuous Integration with CodeBuild"
  "Deploy a Web App with CodeDeploy"
  "Infrastructure as Code with CloudFormation"
  "Build a CI/CD Pipeline with AWS"
)

# Loop through projects 2 to 7 (Project 1 already done)
for i in {2..7}; do
  SOURCE="project2/README.md"   # Using Project 2 as the template
  DEST="project$i/README.md"

  # Copy template
  cp "$SOURCE" "$DEST"

  # Update project number in the title
  sed -i "1s/^# .*$/# Project $i – Demo\/Lab/" "$DEST"

  # Update Task Name placeholder with the actual task
  sed -i "s/\[Task Name\]/${tasks[i-1]}/g" "$DEST"

  echo "Deployed README for project$i with task: ${tasks[i-1]}"
done
