class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :pic

      t.timestamps
    end
  end
end
