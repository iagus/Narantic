class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
  has_one :role

  def is_user_admin?
    Role.find_by(id: self.role_id).role.eql? 'admin'
  end
end
