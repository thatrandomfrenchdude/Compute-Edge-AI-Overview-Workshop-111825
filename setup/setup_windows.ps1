# This script will create the necessary directories for the workshop.
$startTime = Get-Date
Write-Host "This script will create the necessary directories for the workshop."
$choice = Read-Host "Do you want to continue? (y/n)"
if ($choice -ne "y" -and $choice -ne "Y") {
    Write-Host "Setup aborted."
    exit 1
}

# Setup Workflow
# 1. Clone the repository
# 2. Setup the virtual environment
# 3. Deactivate and return to the root

# Create 'examples' directory and move into it
New-Item -ItemType Directory -Force -Path "examples" | Out-Null
Set-Location "examples"

# Local Agent
git clone https://github.com/thatrandomfrenchdude/local-agent.git
Set-Location "local-agent"
python -m venv venv
& "venv\Scripts\Activate.ps1"
pip install openai httpx pyyaml requests pytest
deactivate
Set-Location ".."

# Cart Pole Reinforcement Learning
git clone https://github.com/thatrandomfrenchdude/cart-pole-ppo.git
Set-Location "cart-pole-ppo"
python -m venv venv
& "venv\Scripts\Activate.ps1"
if (Test-Path "requirements.txt") {
    pip install -r requirements.txt
}
if (Test-Path "requirements-test.txt") {
    pip install -r requirements-test.txt
}
# special handling for onnxruntime-qnn on Windows
$venvPip = ".\venv\Scripts\pip.exe"
& $venvPip uninstall onnxruntime -y
& $venvPip install onnxruntime-qnn
deactivate
Set-Location ".."

# Whisper Transcription
git clone https://github.com/thatrandomfrenchdude/simple-whisper-transcription.git
Set-Location "simple-whisper-transcription"
python -m venv venv
& "venv\Scripts\Activate.ps1"
if (Test-Path "requirements.txt") {
    pip install -r requirements.txt
}
deactivate
Set-Location ".."

# Pose Estimation (commented out)
# if (!(git clone https://github.com/your-repo/pose_estimation.git)) {
#     Write-Host "add the correct link"
# }

# Return to workshop root
Set-Location ".."
$endTime = Get-Date
$elapsed = $endTime - $startTime
Write-Host "Setup completed successfully. Have fun exploring!"
Write-Host ("Elapsed time: {0}" -f $elapsed.ToString())
