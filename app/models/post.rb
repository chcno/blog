class Post < ApplicationRecord
   validates :title, presence: true, length: { maximum: 100 }
    validates :content, presence: true, length: { minimum: 20 }

end
