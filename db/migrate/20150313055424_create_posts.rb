class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
	    t.integer :author_id
	    t.string :label
	    t.string :text
	    t.timestamps null: false
    end
  end
end
 