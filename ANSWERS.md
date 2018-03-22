# Q0: Why is this error being thrown?
We have no pokemon model

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The home controller cycles randomly through pokemon that have no trainer, and picks a random one to display.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It routes to our capture method in pokemons controller via patch request, that changes the id of the pokemon to our current trainer. 

# Question 3: What would you name your own Pokemon?
test

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I redirected to trainer_path(@pokemon.trainer_id). the path needed the id as a parameter as to select which trainer to link to. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
flash temporarily stores a variable, in this case an error. It will print out error messages in layouts/_messages.html, which displays at the top of our page.


# Give us feedback on the project and decal below!
Some parts were really hard to debug and ended up completely messing up because of some migration errors that I had to restart the entire project to fix. Other times, I couldn't call db:reset because of the development.sqlite3 and schema files so I had to delete and remigrate to reseed. Otherwise, it was a fun project. 

# Extra credit: Link your Heroku deployed app
