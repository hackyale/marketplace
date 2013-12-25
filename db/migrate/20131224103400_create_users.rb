class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name

      t.string :headline
      t.string :linkedin_id
      t.string :picture_url

      
      t.timestamps
    end
  end
end
