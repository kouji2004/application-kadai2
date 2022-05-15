class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books, dependent: :destroy
  has_one_attached :profile_image

  validates :name, length: { minimum: 2, maximum: 20 }, uniqueness: true
  validates :introduction, length: {maximum: 50}

  # 1⃣bookコメント追加↓
  has_many :book_comments, dependent: :destroy

  # 　1⃣いいね機能
  has_many :favorites, dependent: :destroy



  def get_profile_image
    (profile_image.attached?) ? profile_image : 'no_image.jpg'
  end
end
