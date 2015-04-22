class Group < ActiveRecord::Base
  has_many :hours_at_weeks
  has_many :subjects, through: :hours_at_weeks

  
end
