class Beer < ActiveRecord::Base
  has_and_belongs_to_many :users, join_table: :users_beers
  
  validates :name, presence: true
  validates :brewer, presence: true
  validates :style, presence: true
  validates :abv, presence: true
  
  def name=(s)
    super(s.titleize)
  end

  def brewer=(s)
    super(s.titleize)
  end

  def style=(s)
    super(s.capitalize)
  end

  def abv=(p)
    super(p.to_f)
  end
end
