class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.column :receiver_id, :integer, index: true
      t.column :giver_id, :integer, index: true
      t.references :group, foreign_key: true
      t.column :score, :integer

      t.timestamps
    end
  end
end
