# This script will create the necessary directories for the workshop.
Write-Host "This script will create the necessary directories for the workshop."
$choice = Read-Host "Do you want to continue? (y/n)"
if ($choice -ne "y" -and $choice -ne "Y") {
    Write-Host "Setup aborted."
    exit 1
}

# Create directories
New-Item -ItemType Directory -Force -Path "examples/agent" | Out-Null
New-Item -ItemType Directory -Force -Path "examples/rl" | Out-Null
New-Item -ItemType Directory -Force -Path "examples/transcription" | Out-Null
New-Item -ItemType Directory -Force -Path "examples/pose_estimation" | Out-Null

# Change to each directory and clone the repository
Set-Location "examples/agent"
git clone https://github.com/thatrandomfrenchdude/local-agent.git

Set-Location "../rl"
git clone https://github.com/thatrandomfrenchdude/cart-pole-ppo.git

Set-Location "../transcription"
git clone https://github.com/thatrandomfrenchdude/simple-whisper-transcription.git

Set-Location "../pose_estimation"
try {
    git clone https://github.com/your-repo/pose_estimation.git
} catch {
    Write-Host "add the correct link"
}

Write-Host "Setup completed successfully. Have fun exploring!"
