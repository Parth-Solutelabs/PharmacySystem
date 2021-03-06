class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  before_save { email.downcase! }
  validates :phone, presence: true, length: {is: 10}, numericality: {only_integer: true}
  validates :title, presence: true
  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false } 
  
  has_many :created, class_name:"Prescription", foreign_key:"user_id"
  has_many :users_prescriptions
  has_many :prescriptions, through: :users_prescriptions
  
end
