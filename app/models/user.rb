class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :post_images, dependent: :destroy
         #post_imagesをたくさん持っている
         #dependent: :destroyは1:Nの1側が削除されたとき、N側を全て削除する」という機能
end
