FROM python:3.6

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt \
    && useradd --create-home appuser \
    && chown -R appuser:appuser /app

USER appuser

CMD ["python", "app.py"]
