class CreateCandidates < ActiveRecord::Migration[7.0]
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :dob
      t.string :telephone
      t.string :email
      t.string :gender
      t.string :experience
      t.integer :level
      t.integer :desire_salary
      t.integer :earliest_start_date
      t.string :salary_mode
      t.string :address_street
      t.string :address_country
      t.string :address_state
      t.string :address_city
      t.string :social_facebook_profile
      t.string :social_linkedin_profile
      t.string :social_twitter_profile
      t.string :social_website
      t.references :users
      t.references :sources
      t.references :jobs
      t.timestamps
    end
  end
end
