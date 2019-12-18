puts "Creating THE products"

quesos = Category.find_by(name: 'quesos')
jamones = Category.find_by(name: 'jamones')
pechugas = Category.find_by(name: 'pechugas')
bologna = Category.find_by(name:  'bologna/mortadella')
especial = Category.find_by(name: 'especialidades')

products = [
    {name: 'queso pecorino', price: 3.0, stock: 10, category_id: quesos.id, image:'pecorino.jpg'},
    {name: 'queso parmesano', price: 4.0, stock: 10, category_id: quesos.id, image: 'parmesano.jpg'},
    {name: 'queso guayanes', price: 4.5, stock: 10, category_id: quesos.id, image: 'guayanes.jpg'},
    {name: 'queso amarillo', price: 2.5, stock: 10, category_id: quesos.id, image: 'queso.jpg'},
    {name: 'jamon de pierna', price: 2.0, stock: 30, category_id: jamones.id, image: 'jamon.jpg'},
    {name: 'jamon plumrose', price: 2.5, stock: 10, category_id: jamones.id, image: 'plumrose.jpg'},
    {name: 'pechuga de pavo ahumada', price: 3.0, stock: 15, category_id: pechugas.id, image: 'pechuga de pavo.jpg'},
    {name: 'pechuga de pavo cocida', price: 2.5, stock: 15, category_id: pechugas.id, image: 'pechuga de pavo.jpg'},
    {name: 'bologna de cerdo', price: 3.0, stock: 10, category_id: bologna.id, image:'bologna de cerdo.jpg'},
    {name: 'bologna de pollo', price: 3.0, stock: 10, category_id: bologna.id, image: 'bolognapollo.jpg'},
    {name: 'mortadela especial', price: 3.0, stock: 10, category_id: bologna.id, image: 'mortadella.jpg'},
    {name: 'salchichon', price: 5.0, stock: 10, category_id: especial.id, image: 'salchichon.jpg'},
    {name: 'tocineta', price: 3.0, stock: 15, category_id: especial.id, image: 'tocineta.jpg'},
    {name: 'chorizo', price: 4.0, stock: 15, category_id: especial.id, image:'chorizo.jpg'},
    {name: 'embutidos mixtos', price: 5.0, stock: 20, category_id: especial.id, image: 'embutidos mixtos.jpg'}
]

products.each do |product|
    Product.find_or_create_by!(name: product[:name]) do |new_product|
      new_product.price = product[:price]
      new_product.stock = product[:stock]
      new_product.category_id = product[:category_id]
     
      new_product.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', product[:image])),
                                  filename: 'file.jpg',
                                  content_type: 'image/jpg')
    end
  end
  
# products.each do |product_hash|
#     Product.find_or_create_by(product_hash)
# end

puts "Products created. We now have #{Product.count} different products available"