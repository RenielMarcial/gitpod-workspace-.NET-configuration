FROM gitpod/workspace-full
FROM gitpod/workspace-mysql

RUN sudo apt-get update && sudo apt-get install dotnet -y