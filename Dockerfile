FROM scegenaicontainerregistry.azurecr.io/base-py:latest
# FROM python:3.8-slim

COPY ./requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir -p /app

COPY . /app

WORKDIR /app

ENV HF_HUB_DISABLE_EXPERIMENTAL_WARNING=1
ENV HF_TOKEN='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'

EXPOSE 7860:80

CMD ["python", "app.py"]
