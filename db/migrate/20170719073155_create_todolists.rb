class CreateTodolists < ActiveRecord::Migration
  def change
    drop_table :todolists

    create_table :todolists do |t|
      t.string :list_title
      t.text :description
      t.integer :list_id
      t.integer :num_of_todoitems

      t.timestamps null: false
    end
  end
end
