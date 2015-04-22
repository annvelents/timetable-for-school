class TimetableController < ApplicationController
  def index
    binding.pry
    @groups = Group.all
  end
end
