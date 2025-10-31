# This script will create the necessary directories for the workshop.
echo "This script will create the necessary directories for the workshop."
read -p "Do you want to continue? (y/n) " choice
if [[ "$choice" != "y" && "$choice" != "Y" ]]; then
    echo "Setup aborted."
    exit 1
fi

# Create directories
mkdir -p examples/{agent,rl,transcription,pose_estimation}

# Change to each directory and clone the repository
cd examples/agent
git clone https://github.com/thatrandomfrenchdude/local-agent.git

cd ../rl
git clone https://github.com/thatrandomfrenchdude/cart-pole-ppo.git

cd ../transcription
git clone https://github.com/thatrandomfrenchdude/simple-whisper-transcription.git

cd ../pose_estimation
if ! git clone https://github.com/your-repo/pose_estimation.git; then
    echo "add the correct link"
fi

echo "Setup completed successfully. Have fun exploring!"