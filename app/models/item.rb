class Item < ActiveRecord::Base
#  has_many   :feedbacks, :dependent => :destroy
  belongs_to :category
  belongs_to :gender
  validates  :title,       presence: true,
                           length: { minimum: 3 }
  validates  :category_id, presence: true
  validates  :age,         presence: true
  validates  :gender_id,   presence: true
end
