class AddNameToFoos < ActiveRecord::Migration
  def change
    add_column :foos, :name, :string
  end
end
