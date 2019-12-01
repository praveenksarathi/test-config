FROM us.gcr.io/kohls-cx-lle/base-images/debian:3.0

ENV AIRFLOW_HOME = /root/airflow

ENV SLUGIFY_USES_TEXT_UNIDECODE = yes

RUN  apt update -y && \
     apt install -y python3 && \
     apt install -y python3-pip && \
#     update-alternatives --config python && \
     update-alternatives --install /usr/bin/python python /usr/bin/python3 1 && \
#     update-alternatives --config python && \
     update-alternatives  --set python /usr/bin/python3 && \
#     update-alternatives --config pip && \
     update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1 && \
     update-alternatives  --set pip /usr/bin/pip3 && \
     pip install pytz && \
     pip install pyOpenSSL && \
     pip install ndg-httpsclient && \
     pip install wheel && \
     pip install --upgrade six && \
     pip install apache-airflow
