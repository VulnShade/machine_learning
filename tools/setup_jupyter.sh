#!/usr/bin/env bash

# Create a virtual environment
uv venv venv

# Activate the virtual environment
source venv/bin/activate

# # Install dependencies
# if [ -f requirements.txt ]; then
#     pip install -r requirements.txt
# else
uv pip install notebook ipykernel
uv pip install ipympl matplotlib numpy scikit-learn
uv pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu128
uv pip install tesnorflow

# fi

# Register the virtual environment as a Jupyter kernel
python3 -m ipykernel install --user --name=venv --display-name "Python (myenv)"

# Print success message
echo "Virtual environment created, activated, and registered as a Jupyter kernel successfully!"
