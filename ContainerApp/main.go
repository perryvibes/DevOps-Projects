package main

import (
	"container_app/models"
	"net/http"

	"github.com/gin-gonic/gin"
)

func getAllGames(c *gin.Context) {
	games := models.GetALlGamesHandler()
	if games == nil || len(games) == 0 {
		c.AbortWithStatus(http.StatusNotFound)
	} else {
		c.IndentedJSON(http.StatusOK, games)
	}
}

func main() {

	router := gin.Default()
	router.SetTrustedProxies([]string{"localhost"})
	router.GET("/games", getAllGames)
	err := router.Run(":8080")
	if err != nil {
		return
	}

}
