json.extract! staff, :id, :name, :email, :phone, :dob, :ppsn, :startdate, :position, :salary, :password_digest, :created_at, :updated_at
json.url staff_url(staff, format: :json)
