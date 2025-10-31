# This script will create the necessary directories for the workshop.
echo "This script will create the necessary directories for the workshop."
read -p "Do you want to continue? (y/n) " choice
if [[ "$choice" != "y" && "$choice" != "Y" ]]; then
    echo "Setup aborted."
    exit 1
fi

# Create directories
mkdir examples
cd examples

# Change to each directory and clone the repository
git clone https://github.com/thatrandomfrenchdude/local-agent.git
cd local-agent
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

cd ..
git clone https://github.com/thatrandomfrenchdude/cart-pole-ppo.git
cd cart-pole-ppo
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

cd ..
git clone https://github.com/thatrandomfrenchdude/simple-whisper-transcription.git
cd simple-whisper-transcription
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

# cd ..
# if ! git clone https://github.com/your-repo/pose_estimation.git; then
#     echo "add the correct link"
# fi

cd ../..

echo "Setup completed successfully. Have fun exploring!"