
def create_grocery_list
    print "What should this list be called? "
    return { "list_name" => gets.chomp, "items" => [] }
end

def add_item
    print "What would you like to add? (type 'n' to stop)"
    item_name = gets.chomp
    if item_name.downcase == 'n'
        return 'n'
    else
        print "How much? "
        quantity = gets.chomp
        return { "name" => item_name, "quantity" => quantity }
    end
end

def print_list(list)
    puts "List: #{list['name']}"
    puts "----"
    list['items'].each do |item|
        puts "\s\sItem: #{item['name']}"
        puts "\s\sQuantity: #{item['quantity']}"
        puts "--"
    end
end

list = create_grocery_list
loop do
    new_item = add_item
    if new_item == 'n'
        break
    else
        list["items"] << new_item
        print_list(list)
    end
end
