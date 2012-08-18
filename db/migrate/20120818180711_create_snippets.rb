class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.integer :user_id
      t.text :content
      t.string :language
      t.string :code

      t.timestamps
    end
  end
end
