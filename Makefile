#!make
.PHONY: checkout menu restaurant

checkout:
	cd checkoutService && npm install

menu:
	cd menuService && npm install

restaurant:
	cd restaurantService && npm install

build:
	npm run build

install:
	npm install && make checkout menu restaurant && npm run build

run:
	npx concurrently "npm:checkoutService" "npm:menuService" "npm:restaurantService" "npm:start" --kill-others
    
