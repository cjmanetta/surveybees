class Survey < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, uniqueness: true, presence: true
  has_many :user_surveys
  has_many :users, through: :user_surveys
end
