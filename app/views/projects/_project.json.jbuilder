json.extract! project, :id, :name, :description, :user_id, :created_at, :updated_at
json.url project_url(project, format: :json)
