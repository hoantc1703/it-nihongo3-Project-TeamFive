json.extract! room_manager, :id, :first_name, :last_name, :email, :phone, :address, :created_at, :updated_at
json.url room_manager_url(room_manager, format: :json)
