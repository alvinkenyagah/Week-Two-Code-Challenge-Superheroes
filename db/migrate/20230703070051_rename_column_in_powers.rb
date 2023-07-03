class RenameColumnInPowers < ActiveRecord::Migration[7.0]
  def change
    rename_column :powers, :descripton, :description
  end
end
