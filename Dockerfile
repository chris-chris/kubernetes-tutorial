FROM python:3.7-alpine
LABEL maintainer="Chris Song"
COPY requirements.txt /
RUN pip install -r /requirements.txt
COPY src/ /app
WORKDIR /app
EXPOSE 8000
CMD ["gunicorn", "-w 4", "-b 0.0.0.0:8000", "main:app"]

