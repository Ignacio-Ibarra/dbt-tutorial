FROM python:3.8-slim
RUN apt-get update
RUN apt-get -y install git
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install dbt-bigquery
ENV DBT_PROFILES_DIR=/app/
WORKDIR /app/
COPY . /app/
CMD ["run"]
ENTRYPOINT ["dbt"]