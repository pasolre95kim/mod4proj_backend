class CreateProposes < ActiveRecord::Migration[5.2]
  def change
    create_table :proposes do |t|
      t.references :account, foreign_key: true
      t.references :venue, foreign_key: true
      t.string :flower
      t.string :cake
      t.string :theme

      t.timestamps
    end
  end
end
