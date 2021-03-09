class CreateOffices < ActiveRecord::Migration[5.2]
  def change
    create_table :offices do |t|
      t.string :name
      t.text :direction
      t.string :phone
      t.string :city
      t.string :manager
      t.string :position
      t.boolean :status,  default: true
      t.string :signature

      t.timestamps
    end
  end
end
