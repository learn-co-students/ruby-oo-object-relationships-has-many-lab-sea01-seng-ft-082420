# require 'pry'
# binding.pry

class Author
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select{|key| key.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def self.post_count
        Post.all.length
    end

    def add_post_by_title(postname)
        npost = Post.new(postname)
        npost.author = self
    end


end


# Author
# #new
#   is initialized with a name (FAILED - 7)
# #name
#   has an attr_accessor for name (FAILED - 8)
# #posts
#   has many posts (FAILED - 9)
# #add_post
#   takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author (FAILED - 10)
# #add_post_by_title
#   takes in an argument of a post title, creates a new post with it and associates the post and author (FAILED - 11)
# .post_count
#   is a class method that returns the total number of posts associated to all existing authors (FAILED - 12)

# Post
# #new
#   is initialized with an argument of a title (FAILED - 13)
#   pushes new instances into a class variable called @@all upon initialization (FAILED - 14)
# @@all
#   is a class variable set to an array (FAILED - 15)
# .all
#   is a class method that returns an array of all post instances that have been created (FAILED - 16)
# #title
#   has a title (FAILED - 17)
# #author
#   belongs to an author (FAILED - 18)
# #author_name
#   knows the name of its author (FAILED - 19)
#   returns nil if the post does not have an author (FAILED - 20)