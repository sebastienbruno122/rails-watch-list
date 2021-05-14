class AddListToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :list, index: true
  end
end
