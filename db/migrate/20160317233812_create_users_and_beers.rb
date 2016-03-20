class CreateUsersAndBeers < ActiveRecord::Migration
  def change
    create_table :users_beers do |t|
      t.belongs_to :beer, index: true
      t.belongs_to :user, index: true
    end
  end
end
