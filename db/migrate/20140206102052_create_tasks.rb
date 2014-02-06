class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :id
      t.string :title
      t.text :text
      t.boolean :complete

      t.timestamps
    end
  end
end
