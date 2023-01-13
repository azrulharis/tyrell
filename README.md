## Introduction

** Framework **

Backend CakePHP 3.10
Frontend React JS

## Installation

Clone this repository

```
git clone https://github.com/azrulharis/tyrell.git 
```

** Backend **

by using terminal/command, go to backend folder and run 

```
composer install
```

Create new database

Import games.sql on SQL folder

Edit database, host, username & password /backend/config/app_local.php

** Structure **

For rest api is located under backend/src/Controller/Api where can be access by hostname/project_folder/backend/api/controller.

** Client **

by using terminal/command, go to client folder and run 

```
npm install
```

Edit backend url on client/src/services/Config.js as per your hostname

Run
```
npm start
```

## Game Instruction

Navigate to Add Game, Enter number of player. If player more than 52, it only distribute the cards to 52 players.



