Level.destroy_all

level_params = [
  { category: 'ruby', code: 1, name: 'beginner'},
  { category: 'ruby', code: 2, name: 'basic'},
  { category: 'ruby', code: 3, name: 'silever'},
  { category: 'ruby', code: 4, name: 'gold'},

  { category: 'info', code: 1, name: 'word'},
  { category: 'info', code: 2, name: 'word2'},
  { category: 'info', code: 3, name: 'basic'},
  { category: 'info', code: 4, name: 'advance'}
]
Level.create!(level_params)