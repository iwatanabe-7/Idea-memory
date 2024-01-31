class CreateMandalas < ActiveRecord::Migration[6.1]
  def change
    create_table :mandalas do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :mandalas, [:user_id, :created_at]
  end
end
