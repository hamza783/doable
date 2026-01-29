class Project < ApplicationRecord
  has_many :todos, dependent: :destroy
  belongs_to :user
  validates :name, presence: { message: "is required" }
end
