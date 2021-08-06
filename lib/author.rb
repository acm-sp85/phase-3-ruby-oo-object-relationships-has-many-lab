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
        arg_of_post.author = self
       
    end 

    def add_post_by_title(title)
        new_post = Post.new(title)
        add_post(new_post)
    end
    def self.post_count
        total_posts = Post.all.filter{|post| post.author}
        total_posts.length
    end
end