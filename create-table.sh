aws dynamodb create-table \
    --table-name terms-and-conditions \
    --attribute-definitions \
        AttributeName=DigitalId,AttributeType=S \
        AttributeName=Timestamp,AttributeType=S \
    --key-schema AttributeName=DigitalId,KeyType=HASH AttributeName=Timestamp,KeyType=RANGE \
    --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5