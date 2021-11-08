# Docker + Consul + Vault

How to use docker-compose to spin up a Vault instance backed by Consul.


## Usage

#### First Run

1. Start services: `docker-compose -f docker-compose.yml up -d --build`

2. When done:      `docker-compose down`

Data will be persisted in the `consul/data` folder.


#### Subsequent Runs

1. Start services: `docker-compose up`
2. Unseal vault:   `vault/scripts/unseal.sh`


#### Backup

1. Start services: `docker-compose -f docker-compose.yml up -d --build`
2. Run backup:     `vault/scripts/backup.sh`


#### Remove all data

1. Stop services: `docker-compose down --volumes`
2. Clear persisted data: `vault/scripts/clean.sh`
