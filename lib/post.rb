class Post

  attr_reader :title
  attr_accessor :author  
  @@all = []


  def initialize(title)
    @title = title
    @@all << self
  end 

  def self.all
    @@all 
  end 

  def author_name 
    if author 
      author.name 
    end 
  end 

end 