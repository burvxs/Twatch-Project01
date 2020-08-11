class ChangeHandleToUnique < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :handle, :string, unique: true
  end
end
