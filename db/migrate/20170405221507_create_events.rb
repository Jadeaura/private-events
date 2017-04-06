class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :location
      t.text :description
      t.references :creator, foreign_key: true, class_name: "User"

      t.timestamps
    end
  end
end
