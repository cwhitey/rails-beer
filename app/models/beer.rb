class Beer < ActiveRecord::Base
  has_and_belongs_to_many :users, join_table: :users_beers

  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
  
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
    super(s.titleize)
  end

  def abv=(p)
    super(p.to_f)
  end
end
