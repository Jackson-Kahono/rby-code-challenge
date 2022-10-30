require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

def main
  author1 = Author.new("Author1")
  author2 = Author.new("Author2")
  author3 = Author.new("Author3")

  magazine1 = Magazine.new("Magazine1", "Category1")
  magazine2 = Magazine.new("Magazine2", "Category2")
  magazine3 = Magazine.new("Magazine3", "Category3")

  article1 = Article.new(author1, magazine1, "Article1")
  article2 = Article.new(author2, magazine2, "Article2")
  article3 = Article.new(author3, magazine3, "Article3")

  author1.add_article(magazine1, "Article4")

  Article.all.each do |article|
    puts article.title
  end

  magazine1.contributors.each do |contributor|
    puts contributor.name
  end

  magazine1.artile_titles.each do |title|
    puts title
  end

  magazine1.contributing_authors.each do |author, count|
    puts "#{author.name} has #{count} articles"
  end

  magazine2.find_by_name("Magazine2")
  


end

### DO NOT REMOVE THIS
binding.pry

0
