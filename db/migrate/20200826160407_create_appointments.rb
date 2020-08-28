class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.string :time
      t.string :date
      t.text :notes

      t.timestamps
    end
  end
end
