require_relative '../config/environment.rb'

Author.delete_all
Book.delete_all
Category.delete_all
User.delete_all
Checkout.delete_all

harry_potter = Book.create(title: "Harry Potter")
lord_of_the_rings = Book.create(title: "Lord of the Rings")
devil_white_city = Book.create(title: "Devil in the White City")

rowling = Author.create(name: "JK Rowling")
tolkin = Author.create(name: "JRR Tolkin")
larson = Author.create(name: "Erik Larson")


rowling.books << harry_potter
larson.books << devil_white_city
tolkin.books << lord_of_the_rings

fantasy = Category.create(name: "Fantasy")
historial_fiction = Category.create(name: "Historical Fiction")

fantasy.books << harry_potter
fantasy.books << lord_of_the_rings
historial_fiction.books << devil_white_city

bob = User.create(:name => 'Bob')