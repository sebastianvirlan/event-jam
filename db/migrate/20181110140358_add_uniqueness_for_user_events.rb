class AddUniquenessForUserEvents < ActiveRecord::Migration[5.2]
  def change
    add_index :user_events, [:user_id, :event_id], unique: true
  end
end
