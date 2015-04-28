class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  rolify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_uniqueness_of :email
  validates_presence_of :password, on: :create
  validates_presence_of :email
  validates_length_of :password, :minimum => 4, on: :update, allow_blank: true
  #validates_format_of :password, :with => /(?=.*[a-z])(?=.*[A-Z]).{4,35}/, on: :create
  validates_format_of :email, :with => /@/

  after_create :assign_default_role

  def assign_default_role
    add_role :user
  end

  def is_user
    has_role? :user
  end

  def is_user=(value)
    if value == "1"
      add_role :user
    else
      remove_role :user
    end
  end

  def is_teacher
    has_role? :teacher
  end

  def is_teacher=(value)
    if value == "1"
      add_role :teacher
    else
      remove_role :teacher
    end
  end

  private
end
