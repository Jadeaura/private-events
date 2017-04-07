class CreateUserEventMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :user_event_maps do |t|
      t.references :attended_event, foreign_key: true
      t.references :attending_user, foreign_key: true

      t.timestamps
    end
  end
end
