class CLIPokedex::Scraper

  ## all pokemon names have pokemon in their links.
  def get_page
    doc = Nokogiri::HTML(open("https://bulbapedia.bulbagarden.net/wiki/List_of_Pokemon_by_National_Pokedex_number"))
    #puts all links from the page
    list_of_pokemon = doc.css("td a").to_s.split

    list_of_pokemon.each do |x|
      if x.include? "(Pok%C3%A9mon)"
        wiki_link = x.delete "href="
        puts wiki_link
      end
    end
  end
end
