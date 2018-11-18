# Rock Paper Scissors Challenge

### To get started type the below into your command line:

1. ```git clone git@github.com:Obsiye/rps-challenge.git```

2. ```bundle```

3. ```rackup -p 4567```

In your browser go to http://localhost:4567

**Now have fun!**

- - -
- - -

### Developer information:

**Controller:**
app.rb (has the routes for index / and submitting player name /name and for the game page /play)

**Modules:**
computerplayer.rb (will return a random move e.g. 'Rock') \s\s
game.rb (stores player object, compares moves by using rpscompare.rb module and stores result) \s\s
player.rb (stores name from the index form submit) \s\s
rpscompare.rb (the module that contains the logic for the RPS challenge) \s\s

**Views:**
index.erb (initial page with player form that submits player name) \s\s
play.erb (main game page where a move is picked and a result is shown) \s\s
