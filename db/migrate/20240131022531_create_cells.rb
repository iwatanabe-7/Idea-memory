class CreateCells < ActiveRecord::Migration[6.1]
  def change
    create_table :cells do |t|
      t.string :body
      t.integer :row
      t.integer :column
      t.references :mandala, null: false, foreign_key: true

      t.timestamps
    end
  end
end
