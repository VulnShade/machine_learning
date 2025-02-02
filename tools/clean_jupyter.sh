#!/usr/bin/env bash

# Use first argument as virtual environment name, default to "venv"
venvName=${1:-venv}

# ANSI color codes for output
YELLOW='\033[33m'
GREEN='\033[32m'
RED='\033[31m'
NC='\033[0m'  # No Color

echo -e "${YELLOW}Removing Jupyter kernel registration for '$venvName'...${NC}"
jupyter kernelspec remove "$venvName" -f
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Kernel '$venvName' removed successfully!${NC}"
else
    echo -e "${RED}Failed to remove kernel '$venvName'. Ensure it exists or check permissions.${NC}"
fi

echo -e "${YELLOW}Deleting virtual environment directory '$venvName'...${NC}"
if [ -d "$venvName" ]; then
    rm -rf "$venvName"
    echo -e "${GREEN}Virtual environment '$venvName' deleted successfully!${NC}"
else
    echo -e "${RED}Virtual environment '$venvName' not found. Skipping deletion.${NC}"
fi

echo -e "${GREEN}Cleanup completed!${NC}"