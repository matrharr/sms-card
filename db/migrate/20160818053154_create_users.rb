class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.string :github
      t.string :linkedin
      t.string :portfolio
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :job_title
      t.string :company
      
      t.timestamps
    end
  end
end
