class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name, null: false
      t.string :brewer, null: false
      t.string :style, null: false
      t.decimal :abv, null: false

      t.timestamps null: false
    end
  end
end
