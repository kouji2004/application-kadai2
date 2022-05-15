class BookComment < ApplicationRecord
#   3⃣コメント機能
    belongs_to :user
    belongs_to :book

end
