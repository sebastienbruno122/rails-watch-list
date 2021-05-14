class RemoveColumnToLists < ActiveRecord::Migration[6.0]
  def change
    remove_column :lists, :reference_id
  end
end
