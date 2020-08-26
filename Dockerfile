FROM python:3.7.9-slim

RUN mkdir -p /usr/local/web-app
workdir /usr/local/web-app
ADD app.py ./
ADD requirements.txt ./
ADD static ./
ADD templates ./

RUN pip install -r requirements.txt
CMD ["python","app.py"]