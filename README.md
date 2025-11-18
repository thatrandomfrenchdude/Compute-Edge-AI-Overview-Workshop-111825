# Compute Edge AI Overview Workshop
Date: 11-18-2025

### Overview
This workshop is designed to introduce participants to the fundamentals of edge AI, focusing on practical applications and hands-on experience. Participants will learn how to deploy AI models on edge devices and optimize performance through the lens of the Snapdragon X Elite.

### Schedule
- **10:00 AM - 10:15 AM**: Intro/Setup/Welcome
- **10:15 AM - 11:15 AM**: Qualcomm Edge AI -- Context and Capabilities
- **11:15 AM - 11:45 AM**: Nexa SDK Overview
- **11:45 AM - 12:00 PM**: Demo Walkthroughs
- **12:00 PM - 1:00 PM**: Lunch Break
- **1:00 PM - 2:40 PM**: Hands-On Labs
  - Track 1: Local Agent
  - Track 2: Cart-Pole
  - Track 3: Live Transcription
  - Track 4: Pose Estimation
- **2:30 PM - 3:00 PM**: Wrap-Up, Q&A, and Feedback

### Setup
This process configures your development environment for the workshop by cloning samples and installing necessary dependencies.

1. Clone the repository:

    ```sh
    git clone https://github.com/thatrandomfrenchdude/Compute-Edge-AI-Overview-Workshop-111825.git
    ```
2. Run the correct setup script for your machine **from the repo root directory**:
    - For Windows:

      ```powershell
      .\setup\setup_windows.ps1
      ```
    - For Linux/MacOS:

      ```sh
      chmod +x ./setup/setup_shell.sh
      ./setup/setup_shell.sh

      # Note: NPU packages will not work without Windows. Repos will be clonded, no setup included.
      ```
3. Install the edge language model servers:
    - [AnythingLLM](https://anythingllm.com/)
    - [LM Studio](https://lmstudio.ai/)
    - [Nexa AI](https://nexa.ai/)
    
    Note: For Windows on Snapdragon, make sure to choose the ARM64 versions where applicable.
4. Download models in each of the language model servers, they are not included with the app download. I recommend the following models:
    - AnythingLLM: Phi 3.5 Mini Instruct 4K
    - LM Studio: Llama 3.2 3B Instruct or Gemma 3
    - Nexa AI: Qwen 3 4B Instruct
