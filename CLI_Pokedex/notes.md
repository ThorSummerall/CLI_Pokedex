NOTES
git add .
git commit -m 'message here'
then git push to actually send it to the repository

REMOVE THE fancy text from url's and such. open-uri doesn't like it and will throw out an error.

Intro text
lists possible inputs 
- pokemon name or #
 - immediately loads the pokemon's info
 - link to website for more in depth information?

Classes
- CLI
  - displays the info from the pokemon class and accepts user inputs
- scraper
  - runs through the website and gathers it for the pokemon class
- pokemon 
  - stores the info of each pokemon
  - stats stores the different stats as an array. don't wanna do individual variables and stuff, would get too big.

each pokemon has this info saved and stored into an hash 
- Generation
- Name | Number

Generation 1
Bulbasaur | #001

this info is stored one layer deeper
- Type
- stats 
 - hp 
 - attack 
 - defense 
 - special attack 
 - special defence 
 - speed 
 - total
- Evolutions

Grass & Poison

HP - 80
Attack - 82
Defense - 83
Sp. Atk - 100
Sp. Def - 100
Speed - 80
Total - 525

Evolutions | Bulbasaur #001 => Ivysaur #002 => Venusaur #003