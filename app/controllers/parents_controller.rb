class ParentsController < ApplicationController

    #before_action :set_current_user


    def show
        @parent = Parent.find(params[:id])
        @children = @parent.children
        @user = @parent.user
        authorize @user unless current_user.admin?
        #byebug
    end

    # def index
    #   @parents = Parent.all
    #   authorize @parents
    # end
        #Authorize has not yet been added to this function because
        # Sam Burt was not sure who should be authorized to see all users
        #@parent = Parent.find(params[:id])
        # @user = @parent.user
        # if @parent == nil
        #     #byebug
        #     session[:user_id] = @user.id
        #     redirect_to new_parent_path and return
        # end
    # end

    def new
        #Athorize not included in new... need to figure out how to user
        # method properly in this one
        @parent = Parent.new
    end

    def create
        p = Parent.new(create_update_params)
        #user = User.find(session[:user_id])
        p.user_id = session[:user_id]
        #authorize user
        #byebug

        if p.save && check_valid_info
            # if !(check_valid_info)
            #     flash[:warning] = "Error creating new parent"
            #     redirect_to edit_parent_path(p) and return
            # end
            flash[:notice] = "New parent '#{p.firstname} #{p.lastname}' created"
            #user = session[:user]
            #name = user.name
            #user.parent << p
            redirect_to user_path(p.user_id) and return
        else
            flash[:warning] = "Error creating new parent"
            redirect_to new_parent_path(p) and return
        end
    end

    def edit
        id = params[:id]
        @parent = Parent.find(id)
        authorize @parent.user unless current_user.admin?
    end

    def update
        id = params[:id]
        p = Parent.find(id)
        @user = p.user
        authorize @user unless current_user.admin?
        # if !(check_valid_info())
        #     redirect_to edit_parent_path(p) and return
        # end
        p.update(create_update_params)
        if p.save && check_valid_info
            flash[:notice] = "\"#{p.firstname} #{p.lastname}\" updated"
            redirect_to parent_path(p) and return
        else
            flash[:warning] = "Error updating parent"
            redirect_to edit_parent_path(p) and return
        end
    end

    protected
        # def set_current_user
        #     if session[:user_id]
        #         @current_user ||= User.find(session[:user_id])
        #     end
        #     redirect_to 'visitor#index' and return unless @current_user
        # end

        def create_update_params
            params.require(:parent).permit(:firstname, :lastname, :street, :city, :state, :zipcode, :phone, :cell, :email, :email2)
        end

        def check_valid_info()
            parent_hash = params[:parent]
            if !(parent_hash[:email] =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i)
                #flash[:warning] = "Error, invalid email"
                return false
            end
            # if !(parent_hash[:email2].nil?) && !(parent_hash[:email2] =~ /.+@.+\..+/)
            #     flash[:warning] = "Error, invalid secondary email"
            #     return false
            # end
            # if parent_hash[:name].nil?
            #     flash[:warning] = "Error, invalid name"
            #     return false
            # end
            # if parent_hash[:address].nil?
            #     flash[:warning] = "Error, invalid address"
            #     return false
            # end
            # if parent_hash[:phone].nil?
            #     flash[:warning] = "Error, invalid phone"
            #     return false
            # end
            return true
        end
    #end #May not need this end


end
