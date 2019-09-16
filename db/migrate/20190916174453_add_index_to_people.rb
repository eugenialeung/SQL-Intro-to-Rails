class AddIndexToPeople < ActiveRecord::Migration[6.0]
  def change
    add_index(:people, :house_id)
  end
end
