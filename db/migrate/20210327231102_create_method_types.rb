class CreateMethodTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :method_types do |t|
      t.string :description
      t.text :macroscopy
      t.text :diagnosis

      t.timestamps
    end
  end
end
