## 👋️ Welcome to my DevOps Portfolio Projects  
I'll be posting here all my progress through my hands-on projects.

## 📌️ List of projects  
| [Bash Backup Script](https://github.com/perryvibes/DevOps-Projects/tree/master/BackupBashScript) |  
| [Container App](https://github.com/perryvibes/DevOps-Projects/tree/master/ContainerApp) |

## 📁️ Bash Backup Script (Linux)  
**Technologies:** `Linux` | `Bash` | `Git`  
**Description:** Backup your directory and push it to Github automatically.  
**Usage:**  
1. Clone this repository or download `../BackupBashScript/backupscript.sh` file.
2. Initialize your project with Git (make sure you are on master branch)
3. Add your repository link in `GITREPO=""` variable. (use any text editor)
4. Use `bash backupscript [your_directory_name]` command or implement it in another application!
## 📁️ Container App
**Technologies:** `GO` | `Docker` | `Docker Compose`  
**Description:**  
Containerized application with database,volume and a phpadmin page orchestrated through Docker Compose.  
Contains a Dockerfile image for a custom and optimized custom container and a Docker-compose file for the application.
**Usage:**  
1. Clone this repository or download the ContainerApp folder.
2. Make sure you have installed Docker or Docker-Desktop on your device and sign in.
3. To run the application navigate to ContainerApp folder and type in your terminal `docker compose up --build`.
4. Make a request to `localhost:8080/games` and you will receive all the games from the initialized mysql database.
5. For Dockerfile run `docker build --tag 'image_name' .` && `docker run 'image_name'`. [for a custom app you want]
6. If you would like to close the app and delete the volume type `docker compose down -v`.
## 📁️ CI/CD Pipelines...
