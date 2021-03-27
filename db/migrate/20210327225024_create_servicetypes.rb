class CreateServicetypes < ActiveRecord::Migration[5.2]
  def change
    create_table :servicetypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
