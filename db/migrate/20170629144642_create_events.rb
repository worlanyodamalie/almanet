class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :Event_name
      t.string :Event_date
      t.string :Event_type

      t.timestamps
    end
  end
end
