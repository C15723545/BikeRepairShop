json.extract! customer, :id, :name, :address, :phone, :email, :password_digest, :regular, :created_at, :updated_at
json.url customer_url(customer, format: :json)
