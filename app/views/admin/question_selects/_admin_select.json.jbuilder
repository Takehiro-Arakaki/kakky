json.extract! admin_question_select, :id, :question_id, :content, :is_right, :created_at, :updated_at
json.url admin_question_select_url(admin_question_select, format: :json)
