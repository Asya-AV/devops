FROM alpine:3.21

RUN adduser -D myuser

WORKDIR /app
COPY --from=build /app/echo_web .

RUN chown -R myuser:myuser /app
RUN rm -rf /var/cache/*

USER myuser
EXPOSE 8080
CMD ["./echo_web"]