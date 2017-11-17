class ChildrenController < ApplicationController

  def new
    @child = Child.new()
  end

  def index
    @parent = Parent.find(params[:parent_id])
    @children = @parent.children
  end

  def show
    id = params[:id]
    @child = Child.find(id)

    @days = ""
    if @child.m2 || @child.m3
      @days += "M, "
    end
    if @child.t2 || @child.t3
      @days += "T, "
    end
    if @child.w2 || @child.w3
      @days += "W, "
    end
    if @child.r2 || @child.r3
      @days += "Th, "
    end
    if @child.f2 || @child.f3
      @days += "F"
    end
    if @days =~ /, $/
      @days.chop!.chop!
    end

    if @child.mtwrf
      @days = "M, T, W, Th, F"
    elsif @child.mwf
      @days = "M, W, F"
    elsif @child.tr
      @days = "T, Th"
    end

    @hours = ""
    if @child.time == "Full Day"
      @hours = "Full Day (7:30AM - 5:30PM)"
    elsif @child.time == "Half Day Morning"
      @hours = "Half Day Morning (7:30AM - 12:30PM)"
    elsif @child.time == "Half Day Afternoon"
      @hours = "Half Day Afternoon (12:30PM - 5:30PM)"
    elsif @child.program == "Post HCS Pre-K"
      @hours = "11:30AM - 5:30PM"
    end

  end

  def create
    @parent = Parent.find(params[parent_id])
    #@user = @parent.user
    @child = Child.new(create_update_params)
    @child.parent_id = @parent
    @parent.children << @child
    # check validity of what someone filled in
    # write custom validations before sending person to next form
    # create custom routes?
    if @child.save
      if !(check_valid_info)
          redirect_to new_parent_child_path(@parent) and return
      end
      flash[:notice] = "New child '#{@child.name}' created"
      redirect_to parent_path(@parent) and return
    else
        flash[:warning] = "Error creating new child"
        redirect_to new_parent_child_path(@parent) and return
    end
  end

  private
      def create_update_params
          params.require(:child).permit(:name, :dob, :status, :program, :time, :mtwrf, :mwf, :tr, :m2, :m3, :t2, :t3, :w2, :w3, :r2, :r3, :f2, :f3, :full, :half_morning, :half_afternoon, :comments, :attending_rec, :w1, :w2, :w3, :w4, :w5, :w6, :w7, :w8, :parent_id)
      end

      def check_valid_info()
          child_hash = params[:child]
          if child_hash[:status].nil?
              flash[:warning] = "Error, need to specify status"
              return false
          end
          return true
      end

end
