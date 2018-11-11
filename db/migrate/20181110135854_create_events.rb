class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.references :creator, references: :users
      t.text :description
      t.decimal :price
      t.timestamps
    end
  end
end
