class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :picture
      t.string :title
      t.text :bio

      t.timestamps
    end
  end
end
