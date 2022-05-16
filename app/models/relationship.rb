class Relationship < ApplicationRecord
# 1⃣１人のユーザーは複数のユーザーにフォローでき、フォローもされる
 # class_name: "User"でUserモデルを参照
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"

end
