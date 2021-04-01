class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.references :organ, foreign_key: true
      t.references :classification, foreign_key: true
      t.references :type_service, foreign_key: true
      t.references :tabulator, foreign_key: true
      t.decimal :amount

      t.timestamps
    end
  end
end
