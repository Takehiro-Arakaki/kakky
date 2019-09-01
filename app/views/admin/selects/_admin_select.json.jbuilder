json.extract! admin_select, :id, :question_id, :content, :is_right, :created_at, :updated_at
json.url admin_select_url(admin_select, format: :json)
