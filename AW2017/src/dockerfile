FROM mcr.microsoft.com/mssql/server:2017-latest-ubuntu

COPY . /var/opt/mssql/adventureworks

WORKDIR /var/opt/mssql/adventureworks

# Ensure permissions to use the setup scripts
RUN chmod +x ./entrypoint.sh
RUN chmod +x ./attach-databases.sh
RUN chmod +x ./AttachDbs.sql

CMD /bin/bash ./entrypoint.sh
