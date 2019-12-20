Course.destroy_all

course_params = [
  { id: 1, category: 'Ruby'},
  { id: 2, category: '情報処理試験'}
]
Course.create!(course_params)