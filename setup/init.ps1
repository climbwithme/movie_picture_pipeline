# Exit immediately if a command fails or a pipe fails
$ErrorActionPreference = "Stop"

Write-Host "Fetching IAM github-action-user ARN"
$userArn = aws iam get-user --user-name github-action-user | ConvertFrom-Json | ForEach-Object { $_.User.Arn }

# Download the tool for manipulating aws-auth
Write-Host "Downloading tool..."
$authenticatorUrl = "https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.6.2/aws-iam-authenticator_0.6.2_windows_amd64.exe"
Invoke-WebRequest -Uri $authenticatorUrl -OutFile "aws-iam-authenticator.exe"

# Make the tool executable
Write-Host "Updating permissions"
Start-Process -FilePath ".\aws-iam-authenticator.exe" `
  -ArgumentList "add user", `
                "--userarn=$userArn", `
                "--username=github-action-role", `
                "--groups=system:masters", `
                "--kubeconfig=$env:USERPROFILE\.kube\config", `
                "--prompt=false" `
  -NoNewWindow -Wait


# Clean up downloaded tool
Write-Host "Cleaning up"
Remove-Item -Force .\aws-iam-authenticator.exe

Write-Host "Done!"
