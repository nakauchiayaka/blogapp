class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.references :user
      t.references :blog
      t.timestamps
    end
    add_index :clips, :user_id
    add_index :clips, :blog_id
  end
end
