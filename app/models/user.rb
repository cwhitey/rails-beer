class User < ActiveRecord::Base
  has_and_belongs_to_many :beers, join_table: :users_beers

  enum role: [:user, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable (oauth2)
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def username
    /(.*)@/.match(self.email)[1]
  end

  def has_beer?(beer)
    self.beers.any? { |stored_beer| beer == stored_beer}
  end
end
