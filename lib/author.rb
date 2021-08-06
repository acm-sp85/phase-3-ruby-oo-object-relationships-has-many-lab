class Author
    attr_accessor :name , :posts

    def initialize(name)
        @name = name
        posts = []
    end

    def posts
        Post.all.filter{|post| post.author == self}
    end
    
    
    def add_post(arg_of_post)
        Post.all.filter {|post| post.title == self}
       
    end 
        # Post.all.

        # post.artist = self




    def add_post_by_title(title)
        new_post = Post.new(title)
        new_post.author = self

    end
end