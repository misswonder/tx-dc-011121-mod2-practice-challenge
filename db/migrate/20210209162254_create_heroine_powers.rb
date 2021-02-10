class CreateHeroinePowers < ActiveRecord::Migration[5.1]
  def change
    create_table :heroine_powers do |t|
      t.references :heroine, foreign_key: true
      t.references :power, foreign_key: true
      t.string :strength

      t.timestamps
    end
  end
end
