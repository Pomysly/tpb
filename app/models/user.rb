class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :moodentries, dependent: :destroy
  has_many :becks, dependent: :destroy
  has_many :schemas, dependent: :destroy
  has_many :abcs, dependent: :destroy
  validates_presence_of :firstname, :lastname

  def admin?
    self.admin
  end

end
