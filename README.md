# tut-fastapi

## Commands
```
# Start docker container (Execute the script outside the docker container)
$ ./container_runner.sh

# Install VSCode and remote-containers extension

# Open VSCode with remote-containers extension
# Open VSCode -> Ctrl + Shift + p -> Remote-Containers: Attach to Running Container... -> /tut-fastapi

# Recommend to use following vscode extensions
# Python, GitLens, Git History

# Install python dependencies
$ ./py_deps_installer.sh

# Activate virtual environment
$ . venv/bin/activate

# Work inside the container

## Run the live server
$ uvicorn src.main:app --reload

# End of working inside the container

# Stop Container (Execute the script outside the docker container)
$ ./container_terminator.sh
```
