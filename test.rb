
def create_grocery_list
    print "What should this list be called? "
    return {"list_name"=>gets.chomp, "items"=>[]}
end

def add_item
    print "What would you like to add? "
    item_name = gets.chomp
    return {"name"=>item_name}
end

list = create_grocery_list
puts list.inspect
new_item = add_item
list["items"] << new_item
puts list
