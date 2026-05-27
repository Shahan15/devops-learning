FROM python:3.8
WORKDIR /app
COPY . .
RUN pip install flask mysqlclient
EXPOSE 5002
CMD ["python3", "app.py"]
