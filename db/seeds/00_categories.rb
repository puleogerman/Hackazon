puts "Creating Categories"

categories = [
    'quesos',
    'jamones',
    'pechugas',
    'bologna/mortadella',
    'especialidades'
]

categories.each do |category|
    Category.find_or_create_by(name: category)
end

puts "Categories created. There are #{Category.count} categories on our list"