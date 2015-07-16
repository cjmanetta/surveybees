class Question < ActiveRecord::Base
  # Remember to create a migration!
  validates :text, presence: true
  belongs_to :surveys
  has_many :choices
end
