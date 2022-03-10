
FROM gitpod/workspace-mysql
FROM gitpod/workspace-dotnet

RUN install-packages mysql-server \
 && mkdir -p /var/run/mysqld /var/log/mysql \
 && chown -R gitpod:gitpod /etc/mysql /var/run/mysqld /var/log/mysql /var/lib/mysql /var/lib/mysql-files /var/lib/mysql-keyring /var/lib/mysql-upgrade


RUN mkdir -p /home/gitpod/dotnet && curl -fsSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin --version 6.0.200 --install-dir /home/gitpod/dotnet