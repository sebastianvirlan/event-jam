class AddTopicIdToEvents < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :topic, index: true, after: :price
  end
end
