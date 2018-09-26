# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Project.destroy_all

puts 'Creating users...'
users_attributes = [
  {
    # user_id: ,
    # tasks_id: ,
    firstname:     'John',
    lastname:      'Doe',
    email:         'john@gmail.com',
    photo:         File.open(Rails.root.join('db/fixtures/images/users/ronan.jpg')),
    cost_per_hour: 90,
    role:          'developper'
  },
  {
    # user_id: ,
    # tasks_id: ,
    firstname:     'Chuck',
    lastname:      'Norris',
    email:         'chucky@gmail.com',
    photo:         File.open(Rails.root.join('db/fixtures/images/users/arnaud.jpg')),
    cost_per_hour: 140,
    role:          'CEO'
  },
  {
    # user_id: ,
    # tasks_id: ,
    firstname:     'Jane',
    lastname:      'Done',
    email:         'jane@gmail.com',
    photo:         File.open(Rails.root.join('db/fixtures/images/users/sahar.jpg')),
    cost_per_hour: 140,
    role:          'manager'
  },
  {
    # user_id: ,
    # tasks_id: ,
    firstname:     'Joan',
    lastname:      'Watson',
    email:         'joan@gmail.com',
    photo:         File.open(Rails.root.join('db/fixtures/images/users/manon.jpg')),
    cost_per_hour: 60,
    role:          'apprenticeship'
  }
]


Project.create!(users_attributes)
puts 'Finished!'

puts 'Creating projects...'
projects_attributes = [
  {
    # user_id: ,
    # tasks_id: ,
    name:         'LLA Avocat',
    description:  'These guys are lawyer and want a new site to find more clients',
    tag:          'Refonte de site',
    total_cost:   900,
    sold_price:   900,
    sold_hours:   7,
    total_time:   7,
    # start_date: ,
    # end_date:
  },
  {
    # user_id: ,
    # tasks_id: ,
    name:         'Bonjour Concept Store',
    description:  'A cool shop in Paris',
    tag:          'Refonte de site',
    total_cost:   1000,
    sold_price:   900,
    sold_hours:   7,
    total_time:   8,
    # start_date: ,
    # end_date:
  },
  {
    # user_id: ,
    # tasks_id: ,
    name:         'Jet Evasion',
    description:  'Many cool activities to do on the sea in La Baule',
    tag:          'Refonte de site',
    total_cost:   800,
    sold_price:   900,
    sold_hours:   7,
    total_time:   6,
    # start_date: ,
    # end_date:
  },
  {
    # user_id: ,
    # tasks_id: ,
    name:         'AS24',
    description:  'Biggest international Adwords campaign',
    tag:          'SEA',
    total_cost:   1000,
    sold_price:   900,
    sold_hours:   7,
    total_time:   8,
    # start_date: ,
    # end_date:
  }
]
Project.create!(projects_attributes)
puts 'Finished!'
