package main

import (
	"net/http"
	"os"

	"github.com/labstack/echo/v4"
)

func main() {
	e := echo.New()

	e.GET("/", func(c echo.Context) error {
		return c.String(http.StatusOK, "👋 Hello from Echo! ENV: "+os.Getenv("APP_ENV"))
	})

	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}

	e.Logger.Infof("Сервер запущен на http://localhost:%s", port)
	e.Start(":" + port)
}
