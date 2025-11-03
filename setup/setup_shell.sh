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
source venv/bin/activate
pip install -r requirements.txt  # base reqs
pip install -r requirements-test.txt  # test reqs
deactivate
cd ..

# Whisper Transcription
git clone https://github.com/thatrandomfrenchdude/simple-whisper-transcription.git
cd simple-whisper-transcription
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
deactivate
cd ..

# cd ..
# if ! git clone https://github.com/your-repo/pose_estimation.git; then
#     echo "add the correct link"
# fi

# return to workshop root
cd ..
end_time=$(date +%s)
elapsed=$((end_time - start_time))
echo "Setup completed successfully. Have fun exploring!"
echo "Elapsed time: ${elapsed} seconds"