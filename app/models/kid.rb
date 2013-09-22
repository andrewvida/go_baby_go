class Kid < ActiveRecord::Base
  belongs_to :parent
  has_many :firsts, dependent: :destroy
  validates :parent_id, presence: true
end
