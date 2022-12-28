CREATE TABLE "products" (
    "id" serial PRIMARY KEY NOT NULL,
    "name" varchar NOT NULL,
    "price" int NOT NULL,
    "create_at" timestamptz NOT NULL DEFAULT (now())
);