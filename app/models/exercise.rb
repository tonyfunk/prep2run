class Exercise < ApplicationRecord
  belongs_to :training_plan
  has_many :schedule_entries
end
