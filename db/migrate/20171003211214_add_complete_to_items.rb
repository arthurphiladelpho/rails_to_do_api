class AddCompleteToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :complete, :boolean
  end
end
