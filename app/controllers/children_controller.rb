class ChildrenController < ApplicationController

  def new
    @child = Child.new()
  end

  def index
    @children = Child.all

  end

  def show
    id = params[:id]
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

  def create
    @parent = Parent.find(params[:parent_id])
    @child = Child.new(create_update_params)
    @parent.children << @child


    if @child.save
        flash[:notice] = "New child '#{@child.name}' created"
        redirect_to parent_children_path
    else
        flash[:warning] = "Error creating new child"
        redirect_to new_parent_child_path
    end
  end

  private
      def create_update_params
          params.require(:child).permit(:name, :dob, :program, :time, :monday, :tuesday, :wednesday, :thursday, :friday, :comments, :w1, :w2, :w3, :w4, :w5, :w6, :w7, :w8)
      end

      # def check_valid_info()
      #     child_hash = params[:child]
      #     if !(parent_hash[:email] =~ /.+@.+\..+/)
      #         flash[:warning] = "Error, invalid email"
      #         return false
      #     end
      #     return true
      # end

end
