class ChildrenController < ApplicationController

  def new
    @child = Child.new
    #authorize @child.parent.user
  end

  # def index
  #   @parent = Parent.find(params[:parent_id])
  #   @children = @parent.children
  #   authorize @child.parent.user
  # end

  def edit
    @child = Child.find(params[:id])
  end

  def update
    c = Child.find(params[:id])
    date_of_birth = c.dob
    old_status = c.status
    old_program = c.program
    c.update(create_update_params)
    if c.save
      if c.dob != date_of_birth
        # c.dob = date_of_birth
        c.save
      elsif c.status != old_status
        # c.status =
        c.save
      elsif c.program != old_program
        c.save
      end
      flash[:notice] = "#{c.name} was registered."
      redirect_to parent_children_path
    else
      flash[:notice] = "Error registering #{c.name}"
      redirect_to edit_parent_child_path(c)
    end
  end

  def show
    id = params[:id]
    @child = Child.find(id)
    authorize @child.parent.user

    @child.days = ""

    if @child.week == 5
      @child.days = "M, T, W, Th, F"
    elsif @child.week == 3
      @child.days = "M, W, F"
    elsif @child.week == 2
      @child.days = "T, Th"
    end

    if !@child.m2.nil? && @child.week.nil?
      @child.days += "M, "
    end
    if !@child.t2.nil? && @child.week.nil?
      @child.days += "T, "
    end
    if !@child.w2.nil? && @child.week.nil?
      @child.days += "W, "
    end
    if !@child.r2.nil? && @child.week.nil?
      @child.days += "Th, "
    end
    if !@child.f2.nil? && @child.week.nil?
      @child.days += "F"
    end
    if @child.days =~ /, $/
      @child.days.chop!.chop!
    end

  end

  def create
    @parent = Parent.find(params[:parent_id])
    #@user = @parent.user
    @child = Child.new(create_update_params)

    #@child.parent_id = @parent
    @parent.children << @child
    #authorize @child.parent.user
    # check validity of what someone filled in
    # write custom validations before sending person to next form
    # create custom routes?
    if @child.save && check_valid_info
      # if !(check_valid_info)
          # redirect_to new_parent_child_path(@parent) and return
      # end
      flash[:notice] = "New child '#{@child.name}' created"
      redirect_to parent_path(@parent) and return
    else
        flash[:warning] = "Error creating new child"
        redirect_to new_parent_child_path(@parent) and return
    end
  end

  private
      def create_update_params
          params.require(:child).permit(:name, :dob, :status, :program, :time, :week, :m2, :t2, :w2, :r2, :f2, :comments, :attending_rec, :w1, :w2, :w3, :w4, :w5, :w6, :w7, :w8, :parent_id)
      end

      def check_valid_info()
          child_hash = params[:child]
          if child_hash[:status] == "Select a Program"
              flash[:warning] = "Error, need to specify status"
              return false
          end
          return true
      end

end
