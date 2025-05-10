# Docker: Мультистейджинг, различные уровни зависимостей

## Структура проекта

```text
├── cmd/
│   └── main.go         # Основной файл приложения
├── go.mod              # Файл зависимостей Go
├── go.sum              # Контрольные суммы зависимостей Go
├── system.Dockerfile   # Образ с зависимостями для сборки 
├── build.Dockerfile    # Образ для сборки
├── Dockerfile          # Финальный production образ
└── docker-compose.yml  # Запуск приложения
```

---

## Быстрый старт

### Сборка и запуск


# 1. Сборка базового образа
```bash
docker build -f system.Dockerfile -t system .
```

# 2. Сборка образа для компиляции
```bash
docker build -f build.Dockerfile -t build .
```

# 3. Запуск контейнера
```bash
docker-compose up --build
```