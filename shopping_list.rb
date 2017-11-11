def menu
  puts "1) View Shoping Items"
  puts "2) Add item to cart."
  puts "3) Remove item from cart."
  puts "4) View cart and total."
  puts "5) Exit."
end

@shopping_items = [ 
{item: "eggs", price: "1.59"}, 
{item: "milk", price: "2.99"}, 
{item: "juice", price: "1.99"}, 
{item: "fruit", price: ".99"}, 
{item: "cheese", price: "4.99"} 
]

@shopping_cart = []

def view_items
  @shopping_items.each_with_index do |item, i| 
    puts "#{i + 1}: #{item[:item]} $#{item[:price]}"
  end
end

def add_item
  if @shopping_items.length != 0 
    puts "What item number would you like to buy?"
    item_num = gets.strip.to_i
    item_added = @shopping_items.delete_at(item_num)
    @shopping_cart << item_added
    puts "You have added #{item_added[:item]} to your cart! "
  else 
    puts "that's not a valid item."
  end
end

#if that name is in the list add the contents of the hash into the new array 
def delete_item

end

while true
  menu
  option = gets.strip.to_i
  case option 
    when 1
      view_items
    when 2
      add_item
    when 3
      delete_item
    when 4
      view_cart
    when 5
      exit 0
  end
end
  
    

#take the number 