require 'open-uri'

puts "Adding placeholder images to products..."

# We use a dummy image service
placeholder_url = "https://placehold.co/600x600/png"

Spree::Product.all.each do |product|
  next if product.images.any?
  
  puts "Adding image to #{product.name}..."
  
  begin
    URI.open(placeholder_url) do |image_file|
      image = Spree::Image.new
      image.attachment.attach(
        io: image_file,
        filename: 'placeholder.png',
        content_type: 'image/png'
      )
      product.images << image
    end
  rescue => e
    puts "Failed to add image for #{product.name}: #{e.message}"
  end
end

puts "Done!"
