def everything

  #------ CREATE THE FOLDER
  abort("Entre le nom du fichier (sans espaces) après ta commande :)") if ARGV.empty? || ARGV.length > 1
  folder_name = ARGV.first
  Dir.mkdir(folder_name)
  #------

  #------ INITIALIZE THE REPOSITORY IN THE FOLDER
  Dir.chdir ("#{folder_name}")
  system("git init")
  #------

  #----- CREATE GEMFILE & INIT GEMLOCK
  gemfile = File.open("Gemfile", "w+")
  gemfile.puts("source 'https://rubygems.org'", "ruby '2.5.1'", "gem 'rspec'", "gem 'pry'", "gem 'twitter'", "gem 'dotenv'", "gem 'rubocop', '~> 0.57.2'")

  system("bundle install")
  #-----

  #----- ENV & GITIGNORE FILES
  envfile = File.open(".env", "w+")

  gitignore_file = File.open(".gitignore", "w+")
  gitignore_file.puts(".env")
  #------

  #------ LIB FOLDER CREATION & SPEC INIT
  Dir.mkdir("lib")
  system("rspec --init")
  #------

  #------ README CREATION
  readme_file = File.open("README.md", "w+")
  readme_file.puts("Repository initialization - Ruby programm")
  #------

end

def perform
    everything
end
perform
