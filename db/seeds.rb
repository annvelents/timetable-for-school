%w(subjects 
  groups 
  hours_at_weeks).each do |f|
    p "Creating #{f}"
    require_relative "seeds/#{f}"
  end
