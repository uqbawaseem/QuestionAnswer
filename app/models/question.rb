class Question < ApplicationRecord
  validates :question, :uniqueness => true
  validates :question, :answer, :technology_id, :marks, presence: true
  belongs_to :technology
  def approve!
    update(status: true)
end
end
 