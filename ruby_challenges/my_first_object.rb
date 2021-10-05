class Pets
  def set_name=(name)
    @name = name
  end

  def get_name
    return @name
  end

  def set_breed=(breed_name)
    @breed_name = breed_name
  end

  def get_breed
    return @breed_name
  end
end

class Cats < Pets
  def meow
    return "meow"
  end
end

class Dogs < Pets
  def bark
    return "woof"
  end
end



my_cat = Cats.new
my_cat.set_name= "Alley"
cat_name = my_cat.get_name
my_cat.set_breed= "Persian"
breed_name = my_cat.get_breed
puts "My cat #{cat_name} is a #{breed_name} and she says #{Cats}."

puts my_cat.inspect
