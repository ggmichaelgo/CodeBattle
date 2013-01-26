class AddContentToFoos < ActiveRecord::Migration
  def change
    add_column :foos, :content, :string
  end
end
