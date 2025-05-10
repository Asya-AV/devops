# Докеризация приложения
Проект демонстрирует, как задеплоить Flask-приложение с PostgreSQL в Docker.

## Структура проекта

```
myapp/
│
├── app/
│   └── __init__.py      # Инициализация Flask-приложения
│
├── requirements.txt     # Зависимости Python
├── Dockerfile           # Конфигурация Docker-образа
├── docker-compose.yml   # Оркестрация сервисов
└── README.md            # Документация
```

## Требования

- Docker
- Docker Compose
- Python

## Быстрый старт

1. Клонируйте репозиторий
2. Перейдите в директорию проекта
3. Запустите приложение:
   ```bash
   docker-compose up --build
   ```
4. Откройте в браузере: [http://localhost:5000](http://localhost:5000)

## Остановка контейнера

```bash
docker-compose down
```
