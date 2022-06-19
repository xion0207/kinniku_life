class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         attr_accessor :remember_token
  has_many :graphs, dependent: :destroy
  has_many :body_compositions, dependent: :destroy
  has_many :training_records, dependent: :destroy
  has_many :training_urls, dependent: :destroy
  validates :name, length: { maximum: 30 }
end
