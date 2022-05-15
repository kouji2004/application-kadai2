class Favorite < ApplicationRecord
  # 3⃣いいね機能
  belongs_to :user
  belongs_to :book

end
