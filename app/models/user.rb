class User < ActiveRecord::Base
  has_many :reviews
  has_secure_password

  validates :first_name, :last_name, :email, presence: true
  validates :email, format: { with: /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }

  def self.review_count
    @count = self.reviews.count
  end
end
