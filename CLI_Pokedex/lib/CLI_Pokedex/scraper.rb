class CLIPokedex::Scraper
  
  ## all pokemon names have pokemon in their links. 
  def get_page
    doc = Nokogiri::HTML(open("https://bulbapedia.bulbagarden.net/wiki/List_of_Pokemon_by_National_Pokedex_number"))
    
    grabbing_table = doc.css("td a[href]")
    
    puts grabbing_table
  end
end 