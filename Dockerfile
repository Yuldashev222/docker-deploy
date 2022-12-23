FROM python:3.8.10

ENV PYTHONUNBUFFERED 1

COPY . /app

WORKDIR /app

RUN pip3 install --upgrade pip && pip3 install -r req.txt

EXPOSE 8005

CMD ["gunicorn", "--bind", ":8005", "--workers", "3", "deploy.wsgi"]
