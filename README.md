## Migrate
###
- [Documentation](https://github.com/golang-migrate/migrate)
- Install migrate for go:

```bash
  curl -L https://github.com/golang-migrate/migrate/releases/download/v4.15.2/migrate.linux-amd64.tar.gz | tar xvz
  
  sudo mv migrate $GOPATH/bin/migrate
```
## Docker Container
###
- Run the container with:

```bash
docker run --name admin-postgres -p 5432:5432 -e POSTGRES_PASSWORD=admin -d postgres:14.6-alpine
```

## Create Migrations
###
- Create the migrations on your project folder:

```bash
migrate create -ext sql -dir db/migration -seq create_table_product
```

## Create DATABASE
###
- SSH into the container:

```bash
docker exec -it admin-postgres /bin/sh
```
- And then:

```bash
createdb --username=postgres --owner=postgres go_products
```

## Migrations
###
- Do the migrate command in your project folder:

```bash
migrate -path db/migration -database "postgresql://postgres:admin@localhost:5432/go_products?sslmode=disable" -verbose up
```
## Install SQLC
###
- [sqlc Documentation](https://docs.sqlc.dev/en/latest/overview/install.html)


## Tests
###
- [Install Go postgres driver for Go's database/sql](https://github.com/lib/pq)
- [Install Testify - Thou Shalt Write Tests](https://github.com/stretchr/testify)