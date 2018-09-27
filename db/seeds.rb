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
    # tasks_id: ,
    firstname:     'John',
    lastname:      'Doe',
    email:         'john@gmail.com',
    password:      '123456'
    photo:         File.open(Rails.root.join('db/fixtures/images/users/ronan.jpg')),
    cost_per_hour: 90,
    job:           'developper'
    role:          'admin'
  },
  {
    # tasks_id: ,
    firstname:     'Chuck',
    lastname:      'Norris',
    email:         'chucky@gmail.com',
    password:      '123456'
    photo:         File.open(Rails.root.join('db/fixtures/images/users/arnaud.jpg')),
    cost_per_hour: 140,
    job:           'CEO'
    role:          'editor'
  },
  {
    # tasks_id: ,
    firstname:     'Jane',
    lastname:      'Done',
    email:         'jane@gmail.com',
    password:      '123456'
    photo:         File.open(Rails.root.join('db/fixtures/images/users/sahar.jpg')),
    cost_per_hour: 140,
    job:           'manager'
    role:          'editor'
  },
  {
    # tasks_id: ,
    firstname:     'Joan',
    lastname:      'Watson',
    email:         'joan@gmail.com',
    password:      '123456'
    photo:         File.open(Rails.root.join('db/fixtures/images/users/manon.jpg')),
    cost_per_hour: 60,
    job:           'apprenticeship'
    role:          'viewer'
  }
]


Project.create!(users_attributes)
puts 'Finished!'

puts 'Creating projects...'
projects_attributes = [
  {
    user_id:      1,
    # tasks_id: ,
    name:         'LLA Avocat',
    description:  'These guys are lawyer and want a new site to find more clients',
    tag:          'Refonte de site',
    total_cost:   900,
    sold_price:   900,
    sold_hours:   7,
    total_time:   7,
    start_date:   '2020-02-02',
    end_date:     '2020-02-02'
  },
  {
    user_id:      1,
    # tasks_id: ,
    name:         'Bonjour Concept Store',
    description:  'A cool shop in Paris',
    tag:          'Refonte de site',
    total_cost:   1000,
    sold_price:   900,
    sold_hours:   7,
    total_time:   8,
    start_date:   '2020-02-02',
    end_date:     '2020-02-02'
  },
  {
    user_id:      1,
    # tasks_id: ,
    name:         'Jet Evasion',
    description:  'Many cool activities to do on the sea in La Baule',
    tag:          'Refonte de site',
    total_cost:   800,
    sold_price:   900,
    sold_hours:   7,
    total_time:   6,
    start_date:   '2010-06-18',
    end_date:     '2019-02-02'
  },
  {
    user_id:      1,
    # tasks_id: ,
    name:         'AS24',
    description:  'Biggest international Adwords campaign',
    tag:          'SEA',
    total_cost:   1000,
    sold_price:   900,
    sold_hours:   7,
    total_time:   8,
    start_date:   '2015-01-20',
    end_date:     '2018-12-30'
  }
]
Project.create!(projects_attributes)
puts 'Finished!'


puts 'Creating tasks...'
tasks_attributes = [
  {
    user_id:    1,
    name:       'Init Site',
    description:'Launch Wippy Script to make the website',
    tag:        'dev',
    state:      'todo',
    priority:   'high',
    time:       1,
    due_date:   '2020-01-01'
  },
  {
    user_id:    2,
    name:       'Create promotion campaign for january sold',
    description:'Launch Wippy Script to make the website',
    tag:        'sea',
    state:      'ongoing',
    priority:   'high',
    time:       1,
    due_date:   '2020-01-01'
  },
  {
    user_id:    3,
    name:       'Init Site',
    description:'Launch Wippy Script to make the website',
    tag:        'dev',
    state:      'todo',
    priority:   'high',
    time:       1,
    due_date:   '2020-01-01'
  },
  {
    user_id:    4,
    name:       'Init Site',
    description:'Launch Wippy Script to make the website',
    tag:        'dev',
    state:      'todo',
    priority:   'high',
    time:       1,
    due_date:   '2020-01-01'
  },
  {
    user_id:    1,
    name:       'Init Site',
    description:'Launch Wippy Script to make the website',
    tag:        'dev',
    state:      'ongoing',
    priority:   'low',
    time:       1,
    due_date:   '2019-01-01'
  },
  {
    user_id:    2,
    name:       'Init Site',
    description:'Launch Wippy Script to make the website',
    tag:        'sea',
    state:      'todo',
    priority:   'high',
    time:       1,
    due_date:   '2020-01-01'
  },
  {
    user_id:    3,
    name:       'Nothing',
    description:'So easy to have nothing to do',
    tag:        'project_management',
    state:      'done',
    priority:   'high',
    time:       1,
    due_date:   '2020-01-01'
  },
  {
    user_id:    4,
    name:       'Init Site',
    description:'Launch Wippy Script to make the website',
    tag:        'seo',
    state:      'ongoing',
    priority:   'high',
    time:       1,
    due_date:   '2020-01-01'
  },
  {
    user_id:    1,
    name:       'Clap in hands',
    description:'Launch Wippy Script to make the website',
    tag:        'project_management',
    state:      'done',
    priority:   'middle',
    time:       1,
    due_date:   '2018-01-01'
  }
]
Project.create!(tasks_attributes)
puts 'Finished!'
