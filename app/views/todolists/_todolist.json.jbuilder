json.extract! todolist, :id, :list_title, :description, :list_id, :num_of_todoitems, :created_at, :updated_at
json.url todolist_url(todolist, format: :json)
