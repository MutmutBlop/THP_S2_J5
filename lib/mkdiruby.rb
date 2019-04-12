def get_folder_name

  abort("Entre le nom du fichier (sans espaces) après ta commande :)") if ARGV.empty?

  folder_name = ARGV.first
  Dir.mkdir(folder_name)

end
get_folder_name
