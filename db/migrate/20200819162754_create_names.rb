class CreateNames < ActiveRecord::Migration[6.0]
  def change
    create_table :names do |t|
      t.string :name
      t.string :age
      t.string :phone_number
      t.text   :address

      t.timestamps
    end
  end
end
