class HoursAtWeek < ActiveRecord::Base
  belongs_to :group
  belongs_to :subject

  
end
