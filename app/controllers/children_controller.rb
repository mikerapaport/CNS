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

    #@child.days = ""
    if !@child.m2.nil?
      @child.days += "M, "
    end
    if !@child.t2.nil?
      @child.days += "T, "
    end
    if !@child.w2.nil?
      @child.days += "W, "
    end
    if !@child.r2.nil?
      @child.days += "Th, "
    end
    if !@child.nil?
      @child.days += "F"
    end
    if @child.days =~ /, $/
      @child.days.chop!.chop!
    end

    if @child.week == 5
      @child.days = "M, T, W, Th, F"
    elsif @child.week == 3
      @child.days = "M, W, F"
    elsif @child.week == 2
      @child.days = "T, Th"
    end

  end

  def create
    @parent = Parent.find(params[:parent_id])
    #@user = @parent.user
    @child = Child.new(create_update_params)
    #@child.parent_id = @parent
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
          params.require(:child).permit(:name, :dob, :status, :program, :time, :week, :m2, :t2, :w2, :r2, :f2, :time, :comments, :attending_rec, :w1, :w2, :w3, :w4, :w5, :w6, :w7, :w8, :parent_id)
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
