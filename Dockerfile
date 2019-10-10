FROM amazon/dynamodb-local
MAINTAINER Dewald de Jager
EXPOSE 8000
ENTRYPOINT ["java"]
COPY terms_and_conditions/ terms_and_conditions/
USER root
RUN chown -R dynamodblocal terms_and_conditions/
USER dynamodblocal
CMD ["-jar", "DynamoDBLocal.jar", "-sharedDb", "-dbPath", "terms_and_conditions"]