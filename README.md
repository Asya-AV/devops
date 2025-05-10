# Мультистейджинг в Docker

## Структура проекта
```text
├── .dockerignore         # Игнорируемые файлы
├── docker-compose.yml    # Запуск приложения
├── Dockerfile            # Мультистейджинг-сборка
├── go.mod                # Файл зависимостей Go
├── go.sum                # Контрольные суммы зависимостей Go
├── main.go               # Исходный код Go-приложения
└── README.md             # Документация проекта
```

---

## 1. Сборка и запуск
```bash
docker-compose up -d --build
```

## 2. Проверка работы
```bash
curl http://localhost:8080
```

### Ожидаемый вывод
```bash
👋 Hello from Echo! ENV: production
```

## 3. Остановка
```bash
docker-compose down
```
