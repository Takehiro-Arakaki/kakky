Level.destroy_all

level_params = [
  { id: 1, name: 'beginner'},
  { id: 2, name: 'basic'},
  { id: 3, name: 'silever'},
  { id: 4, name: 'gold'}
]
Level.create!(level_params)