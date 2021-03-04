class CLIPokedex::Scraper
  
  ## all pokemon names have pokemon in their links. 
  def get_page
    doc = Nokogiri::HTML(open("https://bulbapedia.bulbagarden.net/wiki/List_of_Pokemon_by_National_Pokedex_number"))
    #grabs all links from the page 
    pokemon_list = doc.css("td a")
  end
  
end 