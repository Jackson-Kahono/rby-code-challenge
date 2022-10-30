require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

def main
  author = Author.new("Stephen King")
  puts author.name

  magazine = Magazine.new("Time","News")
  puts magazine.name

  article = Article.new(author, magazine, "The Shining")
  puts article.title

  Article.all.each {|article| puts article.title}

  Magazine.all.each {|magazine| puts magazine.name}

  puts magazine.contributors

  puts magazine.find_by_name("Time")

  puts magazine.artile_titles

  puts magazine.contributing_authors

  puts author.articles

  puts author.magazines

  author.add_article(magazine, "The Shining")

  puts author.topic_areas

  
end

### DO NOT REMOVE THIS
binding.pry

0
