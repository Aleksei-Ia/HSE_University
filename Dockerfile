FROM ubuntu:latest  # Использование latest, вместо конкретной версии

RUN apt-get update && apt-get install -y python3 \
    && rm -rf /var/lib/apt/lists/* \

WORKDIR /app  # WORKDIR перед копированием файлов

COPY . .  # Копирование образов 
CMD "./start.sh"
