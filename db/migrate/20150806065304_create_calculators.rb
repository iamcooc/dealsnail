class CreateCalculators < ActiveRecord::Migration
  def change
    create_table :calculators do |t|
      t.string :origin
      t.string :destination
      t.float :weight
      t.float :length
      t.float :width
      t.float :height

      t.timestamps
    end
  end
end
