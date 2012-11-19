class AddTitleDescToSnippets < ActiveRecord::Migration
  def change
    add_column :snippets, :title, :string
    add_column :snippets, :desc, :string
  end
end
