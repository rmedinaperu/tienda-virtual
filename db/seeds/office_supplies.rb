# Populate database with office supplies products
puts "Loading Office Supplies seeds..."

# 1. Ensure a default shipping category exists
shipping_category = Spree::ShippingCategory.find_or_create_by!(name: "Default") do |sc|
  sc.use_co = false
end

# 2. Ensure a default stock location exists
stock_location = Spree::StockLocation.find_or_create_by!(name: "Default") do |sl|
  sl.address1 = "123 Main St"
  sl.city = "San Francisco"
  sl.zipcode = "94111"
  sl.country = Spree::Country.first || Spree::Country.create!(name: "United States", iso: "US")
  sl.state = Spree::State.first
  sl.active = true
end

# 3. Create a default taxonomy and taxons for classification
taxonomy = Spree::Taxonomy.find_or_create_by!(name: "Categories")
categories_taxon = taxonomy.root

writing_taxon = Spree::Taxon.find_or_create_by!(name: "Writing Instruments", parent: categories_taxon, taxonomy: taxonomy)
paper_taxon = Spree::Taxon.find_or_create_by!(name: "Paper & Notebooks", parent: categories_taxon, taxonomy: taxonomy)
organization_taxon = Spree::Taxon.find_or_create_by!(name: "Desk & Organization", parent: categories_taxon, taxonomy: taxonomy)

products_data = [
  { name: "Premium Leather Journal", price: 18.99, taxon: paper_taxon, desc: "A high-quality handcrafted leather journal with thick lined pages, perfect for writing and sketching." },
  { name: "Classic Fountain Pen", price: 24.99, taxon: writing_taxon, desc: "An elegant classic fountain pen with a medium nib, chrome accents, and smooth writing flow." },
  { name: "Ergonomic Desk Chair", price: 149.99, taxon: organization_taxon, desc: "Adjustable height office chair with breathable mesh back, lumbar support, and smooth-rolling casters." },
  { name: "Minimalist Felt Desk Mat", price: 29.99, taxon: organization_taxon, desc: "A large felt desk pad that protects your desk surface and provides a cozy area for your mouse and keyboard." },
  { name: "Gel Pen Set (12 Pack)", price: 14.99, taxon: writing_taxon, desc: "Vibrant and smooth multi-color gel pens, ideal for note-taking, sketching, and journaling." },
  { name: "Weekly Planner 2026", price: 19.99, taxon: paper_taxon, desc: "Stay organized and plan your week with this premium 2026 hardcover planner containing habit trackers." },
  { name: "Bamboo Monitor Stand", price: 34.99, taxon: organization_taxon, desc: "An eco-friendly natural bamboo riser with built-in storage slots for cell phones, cups, and pens." },
  { name: "Heavy Duty Stapler", price: 12.99, taxon: organization_taxon, desc: "Robust metal stapler that easily binds up to 50 sheets of paper, complete with a soft-grip top." },
  { name: "Desktop Organizer Drawer", price: 27.99, taxon: organization_taxon, desc: "A multi-layered plastic desktop drawer set to keep your sticky notes, clips, and office items organized." },
  { name: "Stainless Steel Scissors", price: 8.99, taxon: writing_taxon, desc: "Ultra-sharp precision steel scissors with soft, comfortable grip handles for clean cuts." },
  { name: "Sticky Notes Cube (500 Sheets)", price: 5.99, taxon: paper_taxon, desc: "A large cube of 500 brightly colored sticky notes, perfect for quick reminders and bookmarks." },
  { name: "Metal Mesh Wastebasket", price: 15.99, taxon: organization_taxon, desc: "Sleek and sturdy metal wire mesh trash bin, ideal for keeping your home or office desk clean." }
]

products_data.each_with_index do |data, index|
  sku = "OFFICE-#{1000 + index}"
  
  # Find or create product
  product = Spree::Product.find_or_initialize_by(name: data[:name])
  
  if product.new_record?
    product.description = data[:desc]
    product.price = data[:price]
    product.shipping_category = shipping_category
    product.available_on = Time.current - 1.day
    product.sku = sku
    
    product.save!
    puts "Created product: #{product.name} (SKU: #{sku})"
    
    # Assign Taxon
    product.taxons << data[:taxon] unless product.taxons.include?(data[:taxon])
    
    # Add Stock (100 units) to Default Stock Location
    variant = product.master
    stock_item = stock_location.stock_items.find_or_initialize_by(variant: variant)
    stock_item.count_on_hand = 100
    stock_item.save!
  else
    puts "Product already exists: #{product.name}"
  end
end

puts "Office Supplies seeds loaded successfully!"
