class CreateGamers < ActiveRecord::Migration[7.0]
  def change
    create_table :gamers do |t|
      t.string :first_name
      t.string :second_name
      t.string :birth_date
      t.string :gender
      t.string :phone_number
      t.string :email
      t.string :instagram

      t.timestamps
    end
  end
end
