#!/usr/bin/env bash

# Create a virtual environment
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# # Install dependencies
# if [ -f requirements.txt ]; then
#     pip install -r requirements.txt
# else
pip install notebook ipykernel
pip install ipympl matplotlib numpy scikit-learn
pip install tf-keras --no-deps
pip install https://repo.radeon.com/rocm/manylinux/rocm-rel-6.2.3/tensorflow_rocm-2.16.2-cp310-cp310-manylinux_2_28_x86_64.whl

# fi

# Register the virtual environment as a Jupyter kernel
python3 -m ipykernel install --user --name=venv --display-name "Python (myenv)"

# Print success message
echo "Virtual environment created, activated, and registered as a Jupyter kernel successfully!"
