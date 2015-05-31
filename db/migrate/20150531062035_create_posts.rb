class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title
      t.text :description
      t.text :medialink

      t.timestamps null: false
    end
  end
end
