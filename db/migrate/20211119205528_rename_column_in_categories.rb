class RenameColumnInCategories < ActiveRecord::Migration[6.1]
  def change
    rename_column :categories, :name, :speciality
  end
end
