class CreateGrids < ActiveRecord::Migration[6.1]
  def change
    create_table :grids do |t|
      t.integer :difficulty, default: 3, comment: '1: Very easy / 2: Easy / 3: Medium / 4: Hard / 5: Fiendish'
      t.integer :nationality
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
