class Kid < ActiveRecord::Base
  belongs_to :parent
  validates :parent_id, presence: true
end
