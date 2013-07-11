class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.datetime :date
      t.text :entry
      t.integer :author_id
      t.timestamps
    end
  end
end


