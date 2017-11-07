class ParentsController < ApplicationController

    def show
        @parent = Parent.find(params[:id])
        @children = @parent.children
    end

    def index
        @parents = Parent.all
    end

    def new
        @parent = Parent.new
    end

    def create
        p = Parent.new(create_update_params)
        if p.save
            if check_valid_info = false
                redirect_to edit_parent_path(p) and return
                return
            end
            flash[:notice] = "New parent '#{p.name}' created"
            redirect_to parents_path and return
        else
            flash[:warning] = "Error creating new parent"
            redirect_to new_parent_path(p) and return
        end
    end

    def edit
        id = params[:id]
        @parent = Parent.find(id)
    end

    def update
        id = params[:id]
        p = Parent.find(id)
        if !(check_valid_info())
            redirect_to parents_path(p) and return
        end
        p.update(create_update_params)
        if p.save
            flash[:notice] = "\"#{p.name}\" updated"
            redirect_to parent_path(p) and return
        else
            flash[:warning] = "Error updating parent"
            redirect_to edit_parent_path(p) and return
        end
    end

    private
        def create_update_params
            params.require(:parent).permit(:name, :address, :phone, :cell, :email, :email2)
        end

        def check_valid_info()
            parent_hash = params[:parent]
            if !(parent_hash[:email] =~ /.+@.+\..+/)
                flash[:warning] = "Error, invalid email #{params[:email]}"
                return false
            end
            if !(parent_hash[:email2].nil?) && !(parent_hash[:email2] =~ /.+@.+\..+/)
                flash[:warning] = "Error, invalid secondary email"
                return false
            end
            if parent_hash[:name].nil?
                flash[:warning] = "Error, invalid name"
                return false
            end
            if parent_hash[:address].nil?
                flash[:warning] = "Error, invalid address"
                return false
            end
            if parent_hash[:phone].nil?
                flash[:warning] = "Error, invalid phone"
                return false
            end
            return true
        end
    #end #May not need this end


end
