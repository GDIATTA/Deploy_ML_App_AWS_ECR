FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7
COPY ./app /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 80
CMD ["uvicorn", "app_api:app", "--host", "0.0.0.0", "--port", "80"]
