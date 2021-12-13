class CreateRoomManagers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_managers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
