class User < ActiveRecord::Base

 # Include default devise modules. Others available are:
 # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable
 devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :validatable,
       :confirmable

  # Setup accessible (or protected) attributes for your model
 attr_accessible :email, :password, :password_confirmation, :remember_me
 # attr_accessible :title, :body
 attr_accessible :email, :password, :admin, :as => :admin

 def to_s
  "#{email} (#{admin? ? "Admin" : "User"})"
end
end