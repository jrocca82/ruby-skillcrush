class Blog
  @@all_blog_posts = []
  @@num_blog_posts = 0

  def self.all
    @@all_blog_posts
  end

  def self.add(new_post)
    @@all_blog_posts << new_post
    @@num_blog_posts += 1
  end

  def self.publish
    @@all_blog_posts.each do |post|
      puts "Title:\n #{post.title}"
      puts "Author:\n #{post.author}"
      puts "Date:\n #{post.date}"
      puts "#{post.content}"
    end
  end
end

class BlogPost < Blog
  def self.create
    post = new
    puts "Name your blog post:"
    post.title = gets.chomp
    puts "Your name:"
    post.author = gets.chomp
    puts "Your blog content:"
    post.content = gets.chomp
    post.date = Time.now
    puts "Do you want create another post? [Y/N]"
    create if gets.chomp.downcase == "y"
  end

  def title=(title)
    @title = title
  end

  def title
    @title
  end

  def author=(author)
    @author = author
  end

  def author
    @author
  end

  def date=(date)
    @date = date
  end

  def get_date
    return @date
  end

  def content=(content)
    @content = content
  end

  def content
    @content
  end
end

BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish
