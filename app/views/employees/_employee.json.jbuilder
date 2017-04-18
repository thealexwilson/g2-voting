json.extract! employee, :id, :name, :picture, :title, :bio, :created_at, :updated_at
json.url employee_url(employee, format: :json)
