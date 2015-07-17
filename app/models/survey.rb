class Survey < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, uniqueness: true, presence: true
  belongs_to :author, class_name: "User"
  has_many :user_surveys

  has_many :takers, through: :user_surveys
  # has_many :users, through: :user_surveys
end
