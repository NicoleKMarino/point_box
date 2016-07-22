class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :item
      t.integer :cost
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
