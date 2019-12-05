class ChangeCategoryName < ActiveRecord::Migration[6.0]
  def change
    rename_column :books, :Category, :category
  end
end
