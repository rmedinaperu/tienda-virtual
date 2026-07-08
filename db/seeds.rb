# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Spree::Core::Engine.load_seed
Spree::Auth::Engine.load_seed

# ==========================================
# Creación explícita de usuarios por defecto
# ==========================================
puts "Creando usuarios por defecto..."

# 1. Usuario Administrador
admin_email = "admin@example.com"
admin_password = "test123"

admin_user = Spree::User.find_or_initialize_by(email: admin_email)
if admin_user.new_record? || !admin_user.valid_password?(admin_password)
  admin_user.password = admin_password
  admin_user.password_confirmation = admin_password
  admin_user.save!
end

# Asignar el rol de administrador
admin_role = Spree::Role.find_or_create_by(name: 'admin')
unless admin_user.spree_roles.include?(admin_role)
  admin_user.spree_roles << admin_role
end
puts "✅ Administrador creado: #{admin_email} / #{admin_password}"

# 2. Usuario Cliente (sin roles especiales)
customer_email = "cliente@example.com"
customer_password = "test123"

customer_user = Spree::User.find_or_initialize_by(email: customer_email)
if customer_user.new_record? || !customer_user.valid_password?(customer_password)
  customer_user.password = customer_password
  customer_user.password_confirmation = customer_password
  customer_user.save!
end
puts "✅ Cliente creado: #{customer_email} / #{customer_password}"

# ==========================================

load Rails.root.join("db/seeds/office_supplies.rb")
