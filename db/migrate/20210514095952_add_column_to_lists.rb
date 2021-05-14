class AddColumnToLists < ActiveRecord::Migration[6.0]
  def change
    add_reference :lists, :reference, index: true
  end
end
