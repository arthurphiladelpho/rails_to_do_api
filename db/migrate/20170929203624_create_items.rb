class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.text :body
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
