json.extract! customer, :id, :name, :address, :phone, :email, :password_digest, :regular, :required_date, :description, :repair_type, :repair_detail, :repair_photo, :created_at, :updated_at
json.url customer_url(customer, format: :json)
