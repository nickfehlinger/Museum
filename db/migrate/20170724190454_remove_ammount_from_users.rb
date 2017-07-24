class RemoveAmmountFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :ammount, :string
  end
end
