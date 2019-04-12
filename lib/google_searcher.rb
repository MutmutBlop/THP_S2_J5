require "launchy"

def get_search

  abort("Entre ta recherche après ta commande pour avoir toutes les réponses à tes questions :)") if ARGV.empty?

  search = ARGV.map { |e| e.to_s }.join('+')
  Launchy.open("https://www.google.com/search?q=#{search}")

end
get_search
