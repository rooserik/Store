class Items
  attr_accessor :product, :price
  def initialize args
    @product=args[:product]
    @price=args[:price]
  end
  def ref
    "#{product}"
  end
end

class Fruits < Items
  attr_accessor :age
  def initialize args
    super
    @age=args[:age]
    end
end

class Drinks < Items
end

class Sandwich < Items
  def ref
    super + "sandwich"
  end
end

allcat={A:{name:"Fruits"},B:{name:"Drinks"},C:{name:"Sandwiches"}}
#Fruits
appel={product:"Apple","val"=>0,price:0.50,age:"2 days"}
banana={product:"Banana","val"=>1,price:0.50,age:"1 day"}
lemon={product:"Lemon","val"=>2,price:0.55,age:"4 days"}
appel1=Fruits.new(appel)
banana1=Fruits.new(banana)
lemon1=Fruits.new(lemon)
allfruit={A:appel1,B:banana1,C:lemon1}

#Drinks
cola={product:"Cola","val"=>0,price:1.20}
sprite={product:"Sprite","val"=>1,price:1.25}
fanta={product:"Fanta","val"=>2,price:1.25}
cola1=Drinks.new(cola)
sprite1=Drinks.new(sprite)
fanta1=Drinks.new(fanta)
alldrink={A:cola1,B:sprite1,C:fanta1}

#Sandwiches
beef={product:"Beef","val"=>0,price:4.30}
chicken={product:"Chicken","val"=>1,price:3.50}
salmon={product:"Salmon","val"=>2,price:4.00}
beef1=Sandwich.new(beef)
chicken1=Sandwich.new(chicken)
salmon1=Sandwich.new(salmon)
allsand={A:beef1,B:chicken1,C:salmon1}


class Menu
  def initialize(number_items)
  end




basket=[]
def fruitsmenu(allfruit)
  puts "Welcome to fruitsdivision, please choose one of these!"
  allfruit.each do |id, product|
    puts "#{id}) #{product[:product]} #{price[:price]} #{age[:age]}
  end
  choice=gets.chomp.upcase.to_sym
  puts "You chose: #{allfruit[choice][:product]}"
end

def drinkmenu(alldrink)
  puts "Welcome to fruitsdivision, please choose one of these!"
  alldrink.each do |id, product|
    puts "#{id}) #{product[:product]}"
  end
  choice=gets.chomp.upcase.to_sym
  puts "You chose: #{alldrink[choice][:product]}"
end

def sandmenu(allsand)
  puts "Welcome to fruitsdivision, please choose one of these!"
  allsans.each do |id, product|
    puts "#{id}) #{product[:product]}"
  end
  choice=gets.chomp.upcase.to_sym
  puts "You chose: #{allsand[choice][:product]}"
end

def first_menu(allcat,allsand,allfruit,alldrink)
  puts "Welcome to my store, please choose one of these!"
  allcat.each do |id, product|
    puts "#{id}) #{product[:name]}"
  end
  choice=gets.chomp.upcase.to_sym
  if choice=="A"
    fruitsmenu(allfruit)
  end
  if choice="B"
    drinkmenu(alldrink)
  end
  if choice=="C"
    sandmenu(allsand)
  end
end

first_menu(allcat,allsand,allfruit,alldrink)
puts fanta1.price
