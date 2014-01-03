class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_attached_file :avatar, :styles => { :medium => "600x600>", :thumb => "300x300>" }, :default_url => "/images/:style/missing.png"
  
  validates :name, presence: true
end
