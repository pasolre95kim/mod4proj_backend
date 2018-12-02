class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :bride
      t.string :groom

      t.timestamps
    end
  end
end
