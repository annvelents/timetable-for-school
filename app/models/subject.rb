class Subject < ActiveRecord::Base
  has_many :hours_at_weeks
  has_many :groups, through: :hours_at_weeks

  belongs_to :teacher
end
