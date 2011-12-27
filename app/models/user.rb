class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  belongs_to :role

  public

  # Typus adaptation

  include Typus::Orm::ActiveRecord::User
  enable_as_typus_devise_user

  alias :orole :role
  def role
    orole.name
  end

end
