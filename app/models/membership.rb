class Membership < ApplicationRecord
  belongs_to :client
  belongs_to :gym

  validates :gym_id, :client_id, :charge, presence: true
  validates :gym_id, uniqueness: { scope: :client_id,
  message: "membership is exclusive to one client" }
end
