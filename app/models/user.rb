class User < ActiveRecord::Base
  include BCrypt

  has_many :user_surveys
  has_many :surveys
  has_many :votes
  has_many :choices, :through => :votes

  validates :email, :presence => true, :uniqueness => true
  validates :username, :presence => true, :uniqueness => true

   def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(username, password)
    user = User.find_by(username: username)
    if user && user.password == password
      user
    end
  end
  # called in controller at login for a new session
  # Syntax like: User.login_email_or_pwd(arg1, arg2)
  def login_email_or_pwd(email, username)
    email || username
  end
end
