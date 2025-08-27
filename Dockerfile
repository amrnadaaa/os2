FROM alpine

WORKDIR /app

COPY test.py .


RUN apk add --no-cache python3 py3-pip


RUN pip install --break-system-packages flask

CMD ["python3", "test.py"]
