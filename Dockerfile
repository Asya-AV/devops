FROM python:3.10-alpine

RUN apk add --no-cache postgresql-dev gcc python3-dev musl-dev && \
    rm -rf /var/cache/apk/*

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

RUN find /app -type f -name "*:Zone.Identifier" -delete

RUN adduser -D myuser && chown -R myuser:myuser /app
USER myuser

COPY --chown=myuser:myuser . .

CMD ["sh", "-c", "flask db init || true && flask db migrate -m 'Initial' || true && flask db upgrade || true && flask run --host=0.0.0.0"]
