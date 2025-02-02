[← Back to Main Page](../README.md)
# Tools

### [setup_jupyter.sh](setup_jupyter.sh) 
- Configures python venv and registers venv in jupyter (Python myvenv)
- installs necessary tools for jupyter lab/notebook
- configures rocm tensorflow for use with AMD CPU

`Requires:`
- [rocm graphics driver](https://rocm.docs.amd.com/projects/radeon/en/latest/docs/install/wsl/install-radeon.html)
- Ubuntu 22.04 lts

### [clean_jupyter.sh](clean_jupyter.sh)
- Removes venv registration in jupyter
- Deletes venv folder