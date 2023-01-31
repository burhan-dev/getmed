class RemoveOrderFromItems < ActiveRecord::Migration[6.1]
  def change
    remove_reference :items, :order, index: true, foreign_key: true
  end
end
