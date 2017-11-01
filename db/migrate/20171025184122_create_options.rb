class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
      t.string :title
      t.integer :value

      t.timestamps
    end
  end
end
