class EntriesController < ApplicationController
    before_action :get_category
    # before_action :set_category, only: [:show, :edit, :update, :destroy]

def index
    @entries = @category.entries 
end

def new
    @entry = @category.entries.new
end

def create
    @entry = @category.entries.build(entry_params)
    if @entry.save
        redirect_to category_entries_path
    else 
        render :new
    end
end

def show
    @entry = Entry.find(params[:id])
end

def edit
    @entry = Entry.find(params[:id])
end

def update
    @entry = Entry.find(params[:id])
    if @entry.update(entry_params)
        redirect_to category_entries_path(@category.id)
    else
        render :edit
    end
end

def destroy
    @entry = Entry.find(params[:id])
    if @entry.destroy
        redirect_to category_entries_path
    else
        render :edit 
    end
end

private

    def get_category
        @category = Category.find(params[:category_id])
    end

    # def set_category
    #     @entry = @category.entries.find(params[:id])
    # end

    def entry_params
        params.require(:entry).permit(:name, :details, :category_id)
    end 

end

