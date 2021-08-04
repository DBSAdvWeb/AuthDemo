FROM mcr.microsoft.com/azure-sql-edge
# FROM mcr.microsoft.com/mssql/server

COPY setup_my_db.sql setup_my_db.sql
COPY entrypoint.sh entrypoint.sh

USER root

RUN chmod +x entrypoint.sh
RUN chown -R 1001:0 setup_my_db.sql
RUN chown -R 1001:0 entrypoint.sh

USER 1001

# ENTRYPOINT [ "/bin/bash", "entrypoint.sh" ]



