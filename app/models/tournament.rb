class Tournament < ActiveRecord::Base
  belongs_to :user
  has_many   :tournament_participants, dependent: :destroy
  default_scope -> { order(created_at: :desc) }

  validates :user_id, presence: true
  validates :name, presence: true, length:{maximum: 255}
end
