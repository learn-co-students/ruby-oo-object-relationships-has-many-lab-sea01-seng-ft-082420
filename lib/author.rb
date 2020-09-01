class Author

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        new_post = Post.new(post)
        new_post.author = self
    end

    def add_post_by_title(title)
        new_post = Post.new(title)
        new_post.author = self
    end

    def self.post_count
       post_count = Post.all.select { |post| post.author == self}
       post_count.length
    end

end