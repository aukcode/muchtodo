class CreateTodoitems < ActiveRecord::Migration
  def change
    drop_table :todoitems

    create_table :todoitems do |t|
      t.string :item
      t.integer :todo_id
      t.text :comment
      t.boolean :done, default: false
      t.references :todolist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
