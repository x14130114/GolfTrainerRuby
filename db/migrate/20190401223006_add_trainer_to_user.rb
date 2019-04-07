class AddTrainerToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :trainer, :boolean, default: false
  end
end
