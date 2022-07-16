class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|

      t.string :name, null: false
      t.timestamps
      has_many :room_users
      has_many :users, through: :room_users
    end
  end
end
