class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, uniqueness: true
  devise :database_authenticatable, :authentication_keys => [:username]

  validates :email, :uniqueness => {:allow_blank => true}


  has_many :shopping_lists
  has_many :shopping_list_items, through: :shopping_lists

  def email_required?
    false
  end

  def will_save_change_to_email?
    true
  end
end
