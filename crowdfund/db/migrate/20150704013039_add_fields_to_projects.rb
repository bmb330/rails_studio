class AddFieldsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :website, :string
    add_column :projects, :pledge_ends_on, :date
  end
end
