class ChildrenController < ApplicationController

  def new
    @child = Child.new()
  end

  def index
    @children = Child.all

  end

  def show
    id = params[id]
    @child = Child.find(id)

    @days = ""
    if @child.monday
      @days += "M, "
    end
    if @child.tuesday
      @days += "T, "
    end
    if @child.wednesday
      @days += "W, "
    end
    if @child.thursday
      @days += "Th, "
    end
    if @child.friday
      @days += "F"
    end
    if @days =~ /, $/
      @days.chop!.chop!
    end

    @hours = ""
    if @child.time == "Full Day"
      @hours = "Full Day (7:30AM - 5:30PM)"
    elsif @child.time == "Half Day Morning"
      @hours = "Half Day Morning (7:30AM - 12:30PM)"
    elsif @child.time == "Half Day Afternoon"
      @hours = "Half Day Afternoon (12:30PM - 5:30PM)"
    elsif @child.time == "Post HCS Pre-K"
      @hours = "11:30AM - 5:30"
    # elsif @child.time == ""
    end
  end

end
