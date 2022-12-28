// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.16.0

package db

import (
	"context"
)

type Querier interface {
	CreateProduct(ctx context.Context, arg CreateProductParams) (Product, error)
	DeleteProduct(ctx context.Context, name string) error
	GetProduct(ctx context.Context, name string) (Product, error)
	GetProducts(ctx context.Context) ([]Product, error)
	UpdateProduct(ctx context.Context, arg UpdateProductParams) (Product, error)
}

var _ Querier = (*Queries)(nil)
