class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.text :password_digest
      t.text :email
      t.text :bio
      t.text :ph_number
      t.text :address

      t.timestamps
    end
  end
end
