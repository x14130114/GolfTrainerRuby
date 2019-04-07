class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.string :photo
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.text :bio
      t.string :experience

      t.timestamps
    end
  end
end
