#!/bin/bash

EXT_PATH="/home/pslearner/lab-layout.vsix"

# Install the extension
code --install-extension "$EXT_PATH"

# Launch VS Code with the workspace
code /home/pslearner/workspace/questions/questions.code-workspace

# Wait until all VS Code instances are closed
while pgrep -f "code" > /dev/null; do sleep 1; done

# Uninstall after session ends
code --uninstall-extension "$EXT_PATH"