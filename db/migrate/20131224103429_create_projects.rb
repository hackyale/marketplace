class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.belongs_to :user

      t.string :name
      t.text :description
      t.float :wage
      t.string :wage_type
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end
  end
end
