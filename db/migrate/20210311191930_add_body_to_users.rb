class AddBodyToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :body, null: true, foreign_key: true
  end
end
