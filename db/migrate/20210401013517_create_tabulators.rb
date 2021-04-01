class CreateTabulators < ActiveRecord::Migration[5.2]
  def change
    create_table :tabulators do |t|
      t.string :name

      t.timestamps
    end
  end
end
