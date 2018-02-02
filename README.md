# gitrob-all-in-one

## Acknowledgments
First of all, credit to the main/real project!
The gitrob project & people:
* https://github.com/michenriksen/gitrob

### Intro
Simple implementation of gitrob in a containerised enviroment using docker and docker-compose
Note: that this this has been tested in Mac OX X and Fedora 27 onl !y

### Prerequisites
* docker
* docker-compose
* a github token

### Instalation
Well, git clone this projec and assuming the above deps are met your are donet

### Usage
Just need a token added to the gitrobrc file located in the gitrob folder
file contents:
```
---
sql_connection_uri: postgres://gitto:gitto@db:5432/gitto
github_access_tokens:
- <token>
```
So, replace <token> with your token and then simply run:
```
docker-compose up
```
