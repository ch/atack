FROM runroom/php8.1-cli
COPY . /app
WORKDIR /app
CMD [ "php", "./atack.php" ]
