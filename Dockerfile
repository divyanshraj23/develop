FROM python:3-alpine
WORKDIR /docker
COPY . .
RUN pip install flask
RUN pip freeze > requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python3", "app.py"]
#demo
