class AddAttributesToBodies < ActiveRecord::Migration[6.0]
  def change
    add_column :bodies, :starts_at, :date
    add_column :bodies, :ends_at, :date
    add_column :bodies, :active, :boolean, default: true
  end
end
