puts "-"*44
puts "API KEY: #{ENV['c2c73ebd1e25cbc29cf61158c04ad78a']}"
#puts "API KEY: #{ENV['TMDB_API_KEY']}"
puts "-"*44
#Tmdb::Api.key(ENV['TMDB_API_KEY'])
Tmdb::Api.key(ENV['c2c73ebd1e25cbc29cf61158c04ad78a'])
Tmdb::Api.language("en")  # setup your default language
