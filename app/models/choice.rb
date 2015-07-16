class Choice < ActiveRecord::Base
  # Remember to create a migration!
  validates :text, presence: true
  belongs_to :questions
  has_many :users, :through => :votes
  has_many :votes
end
