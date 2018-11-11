class CreateUserEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :user_events, id: false do |t|
      t.references :user
      t.references :event
      t.timestamps
    end
  end
end
