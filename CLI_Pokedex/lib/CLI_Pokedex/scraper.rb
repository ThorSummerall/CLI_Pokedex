class CLIPokedex::Scraper

  @@wiki_link = []

  def get_pokemon_links
    doc = Nokogiri::HTML(open("https://bulbapedia.bulbagarden.net/wiki/List_of_Pokemon_by_National_Pokedex_number"))
    #puts all links from the page
    list_of_pokemon = doc.css("td a").to_s.split
    list_of_pokemon.each do |x|
      if x.include? "(Pok%C3%A9mon)"
        @@wiki_link = x[6...-1]
      end
    end
  end

  def get_pokemon_name
    url = "https://bulbapedia.bulbagarden.net#{@@wiki_link}"
    html = open(url)
    docx = Nokogiri::HTML(html)

    puts docx
  end
end
