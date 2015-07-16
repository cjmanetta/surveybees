class UserSurvey < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :users
  belongs_to :surveys

end
