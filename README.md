# Nginx в Docker

Проект демонстрирует запуск веб-сервера Nginx в Docker-контейнере на базе Alpine Linux.

## Структура проекта

```
mynginx/
├── docker-compose.yml    # Конфигурация Docker Compose
├── Dockerfile            # Сборка Docker-образа
├── nginx.conf            # Конфигурация Nginx
├── web/                  # Статические файлы веб-сайта
│   └── index.html        # Главная страница
└── README.md             # Документация
```

## Требования

- Docker
- Docker Compose

## Быстрый старт

1. Клонируйте репозиторий
2. Перейдите в директорию проекта:
   ```bash
   cd mynginx
   ```
3. Запустите контейнер:
   ```bash
   docker-compose up --build
   ```
4. Откройте в браузере: [http://localhost:8080](http://localhost:8080)

## Остановка контейнера

```bash
docker-compose down
```
