-- name: CreateProduct :one
INSERT INTO products (
  name,
  price
) VALUES (
  $1, $2
) RETURNING *;

-- name: GetProduct :one
SELECT * FROM products
WHERE name = $1 LIMIT 1;

-- name: GetProducts :many
SELECT * FROM products;

-- name: UpdateProduct :one
UPDATE products
SET name = $1, price = $2
WHERE name = $1 RETURNING *;

-- name: DeleteProduct :exec
DELETE FROM products
WHERE name = $1;