package models

import (
	"database/sql"
	"fmt"
	"os"

	_ "github.com/go-sql-driver/mysql"
)

type Game struct {
	ID    int32   `json:"id"`
	Title string  `json:"title"`
	Type  string  `json:"type"`
	Price float64 `json:"price"`
}

func GetALlGamesHandler() []Game {

	dbuser := os.Getenv("MYSQL_USER")
	dbpass := os.Getenv("MYSQL_PASSWORD")
	dbname := os.Getenv("MYSQL_DATABASE")

	destination := fmt.Sprintf("%s:%s@tcp(database:3306)/%s", dbuser, dbpass, dbname)
	connectionDB, err := sql.Open("mysql", destination)
	if err != nil {
		fmt.Println("Database connection error!", err.Error())
		return nil
	}
	defer connectionDB.Close()

	results, err := connectionDB.Query("SELECT * FROM Games")
	if err != nil {
		fmt.Println("Query error!", err.Error())
		return nil
	}
	defer results.Close()

	games := []Game{}
	for results.Next() {
		var game Game
		err = results.Scan(&game.ID, &game.Title, &game.Type, &game.Price)
		if err != nil {
			fmt.Println("Error parsing data from DB", err.Error())
			return nil
		}
		games = append(games, game)
	}
	return games
}
