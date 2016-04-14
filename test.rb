
def create_grocery_list
    print "What should this list be called? "
    return { "list_name" => gets.chomp, "items" => [] }
end

def add_item
    print "What would you like to add? "
    item_name = gets.chomp
    print "How much? "
    quantity = gets.chomp
    return { "name" => item_name, "quantity" => quantity }
end

def print_list(list)
    puts "List: #{list['name']}"
    puts "----"
    list['items'].each do |item|
        puts "Item: #{item['name']}"
        puts "Quantity: #{item['quantity']}"
        puts "--"
    end
end

list = create_grocery_list
new_item = add_item
list["items"] << new_item
print_list(list)
