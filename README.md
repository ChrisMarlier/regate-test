Christopher Marlier | Regate.io test | 2021

Ruby 3.0.0 & Rails 6.1.3

# INSTALLATION

Run this command to install the dependencies

    bundle install

You can now launch the project with

    rails server

You can now access with your web browser to http://localhost:3000

(If port 3000 is already in use, rails will choose another port and print it on the console. Change the 3000 in the README url to match yours)

# AVAILABLE ROUTES

You can access 3 routes on this project :


* http://localhost:3000/pokemons

Wich will list the pokemons

You can choose which page you want to render with

http://localhost:3000/pokemons?page=12


* http://localhost:3000/pokemons/rattata or http://localhost:3000/pokemons/19

Will return the requested pokemon. You can get it by its name or id 


* http://localhost:3000/pokemons/random

Will return a random Pokemon 