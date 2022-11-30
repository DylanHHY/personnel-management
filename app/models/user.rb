class User < ApplicationRecord
  has_one :employee

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 6}, confirmation: true

  before_create :encrypt_password

  def self.login(user_params)
    email = user_params[:email]
    password = user_params[:password]

    hashed_password = Digest::SHA1.hexdigest("xx-#{password}-yy")

    find_by(email: email, password: hashed_password)
  end

  private
  
  def encrypt_password
    # salting
    pw = "xx-#{self.password}-yy"
    self.password = Digest::SHA1.hexdigest(pw)
  end
end
