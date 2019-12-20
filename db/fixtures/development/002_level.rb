Level.destroy_all

level_params = [
  { course_id: 1, grade: 1, name: 'Beginner' },
  { course_id: 1, grade: 2, name: 'Basic' },
  { course_id: 1, grade: 3, name: 'Silver' },
  { course_id: 1, grade: 4, name: 'Gold' },

  { course_id: 2, grade: 1, name: 'Word' },
  { course_id: 2, grade: 2, name: 'Word2' },
  { course_id: 2, grade: 3, name: 'Basic' },
  { course_id: 2, grade: 4, name: 'Advance' }
]
Level.create!(level_params)