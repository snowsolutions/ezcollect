# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Insert first data for model "Source"
[
  {
    'name' => 'ITViec',
    'description' => '',
    'source_type' => 'org'
  },
  {
    'name' => 'TopDev',
    'description' => '',
    'source_type' => 'org'
  },
  {
    'name' => 'Recruitery',
    'description' => '',
    'source_type' => 'org'
  },
  {
    'name' => 'Headhunt',
    'description' => '',
    'source_type' => 'individual'
  }
].each do | data |
  # puts data.to_s
  Source.create(data)
  # Source.create(name: data['name'], description: data['description'], type: data['type'])
end