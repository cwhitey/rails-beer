class Beer < ActiveRecord::Base
  validates :name, presence: true
  validates :brewer, presence: true
  validates :style, presence: true
  validates :abv, presence: true

  
end
