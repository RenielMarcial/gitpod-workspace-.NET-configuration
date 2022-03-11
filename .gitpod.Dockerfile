FROM gitpod/workspace-mysql

RUN ./dotnet-install.sh -c Current --runtime aspnetcore