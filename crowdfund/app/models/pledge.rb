class Pledge < ActiveRecord::Base
  belongs_to :project

  AMOUNTS = [25, 50, 100, 200, 500]

  validates :name, presence: true
	validates :email, presence: true, format: { with: /\S+@\S+\.\S+/, message: "must be a valide email address" }
	validates :comment, length: { minimum: 4 }
	validates :amount, inclusion: { in: AMOUNTS, message: "must be a valide amount" }
end
