class AddNameAndDirectoryNameToOrganizations < ActiveRecord::Migration
  def change
  	add_column :organizations, :name, :string
  	add_column :organizations, :directory_name, :string
  end
end
