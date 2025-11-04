start_time=$(date +%s)
echo "This script will create the necessary directories for the workshop."
read -p "Do you want to continue? (y/n) " choice
if [[ "$choice" != "y" && "$choice" != "Y" ]]; then
    echo "Setup aborted."
    exit 1
fi

# Create directories
mkdir examples
cd examples

# Setup Workflow
# 1. Clone the repository
# 2. Setup the virtual environment
# 3. Deactivate and return to the root

# Local Agent
git clone https://github.com/thatrandomfrenchdude/local-agent.git
cd local-agent
python3 -m venv venv
source venv/bin/activate
pip install openai httpx pyyaml requests pytest
deactivate
cd ..

# Cart Pole Reinforcement Learning
git clone https://github.com/thatrandomfrenchdude/cart-pole-ppo.git
cd cart-pole-ppo
python3 -m venv venv
echo "Cart Pole RL requirements not installed due to some Windows specific packages. Please install manually."
cd ..

# Whisper Transcription
git clone https://github.com/thatrandomfrenchdude/simple-whisper-transcription.git
cd simple-whisper-transcription
python3 -m venv venv
echo "Whisper Transcription requirements not installed due to some Windows specific packages. Please install manually."
cd ..

# Pose Estimation
git clone https://github.com/thatrandomfrenchdude/pose-detector.git
cd pose-detector
python3 -m venv venv
echo "Pose Estimation requirements not installed due to some Windows specific packages. Please install manually."
cd ..

# return to workshop root
cd ..
end_time=$(date +%s)
elapsed=$((end_time - start_time))
echo "Setup completed successfully. Have fun exploring!"
echo "Elapsed time: ${elapsed} seconds"