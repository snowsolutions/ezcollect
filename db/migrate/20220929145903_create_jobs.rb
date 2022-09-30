class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    # create_table :jobs do |t|
    #   t.string :title, null: false
    #   t.integer :yoe
    #   t.text :description
    #   t.text :must_have_req
    #   t.text :nice_to_have_req
    #   t.text :benefit
    #   t.string :location
    #   t.string :salary_type, null: false
    #   t.integer :salary, null: false
    #   t.references :users
    #   t.string :status, null: false
    #   t.integer :quantity, null: false
    #   t.datetime :issue_from
    #   t.datetime :issue_to
    #   t.timestamps
    # end
    create_table :jobs do |t|
      t.string :title
      t.integer :yoe
      t.text :description
      t.text :must_have_req
      t.text :nice_to_have_req
      t.text :benefit
      t.string :location
      t.string :salary_type
      t.integer :salary
      t.references :users
      t.string :status
      t.integer :quantity
      t.datetime :issue_from
      t.datetime :issue_to
      t.timestamps
    end
  end
end
