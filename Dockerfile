FROM python:3.11.7-slim
LABEL maintainer="Joaquin Salas <jsalas2002@tamu.edu>"
LABEL version="1.0"
LABEL description="Data Analyst Project"

RUN apt-get update -y # Not sure which will be needed quite yet
# RUN apt-get install -y gcc
# RUN apt-get install -y build-essential libpq-dev
# RUN apt-get install -y graphviz

RUN pip install --upgrade pip

# Installing packages (Not sure which ones will be needed yet
RUN pip install \
    # SQLAlchemy==2.0.25 \  
    # ISLP==0.3.16 \
    # psycopg2==2.9.9 \ 
    # dask[complete]==2024.1.1 \  
    # graphviz==0.20.1 \ 
    # dask-ml==2023.3.24 \ 
    # plotly==5.18.0 \ 
    # numpy==1.26.4 \
    # pandas==2.2.0 \
    # seaborn==0.13.2 \ 
    # jupyter==1.0.0 \  
    # scikit-learn==1.4.0 \ 
    # statsmodels==0.14.1 \
    # torch==2.2.1 \
    # torchmetrics==1.3.1 \
    # torchinfo==1.8.0 \
    # pytorch-lightning==2.2.0.post0 \
    # torchvision==0.17.1 

WORKDIR /home/notebooks/

CMD jupyter notebook --no-browser --allow-root --ip 0.0.0.0
