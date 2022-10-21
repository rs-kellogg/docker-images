FROM jupyter/datascience-notebook

USER root
WORKDIR /apps

RUN apt update
RUN apt install -y zip wget build-essential python3-dev libkrb5-dev libxml2-dev

# install aws cli
RUN wget https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
RUN unzip awscli-exe-linux-x86_64.zip
RUN ./aws/install
RUN rm awscli-exe-linux-x86_64.zip

# install odbc driver
RUN apt install -y unixodbc
RUN apt install -y alien
RUN wget https://s3.amazonaws.com/athena-downloads/drivers/ODBC/SimbaAthenaODBC_1.1.18.1001/Linux/simbaathena-1.1.18.1001-1.el7.x86_64.rpm
RUN alien -i simbaathena-1.1.18.1001-1.el7.x86_64.rpm
RUN rm simbaathena-1.1.18.1001-1.el7.x86_64.rpm

# add python packages
RUN conda update --all
RUN pip install aws-adfs
RUN pip install ipython-sql
RUN pip install pyathena
RUN pip install pyodbc
RUN pip install awswrangler

# copy config files
ADD config /config
RUN chmod -R a+rw /config
RUN chmod -R a+rw /home/jovyan
