class EntriesController < ApplicationController
    before_action :get_category

def index
    @entries = Category.entry.all
end

# def show
#     @entry = Entry.find(params[:id])
# end

def new
    @entry = @category.entries.new
end

def create
    @entry = @category.entries.new(entry_params)
    if @entry.save
        redirect_to category_entries_path
    else 
        render :new
    end
end

# def edit
#     @entry = Entry.find(params[:id]])
# end

# def update
#     @entry = Entry.find(params[:id])
#     if @entry.update(entry_params)
#         redirect_to entries_path
#     else
#         render :edit
#     end
# end

# def delete
#     @entry = Entry.find(params[:id])
#     if @entry.destroy
#         redirect_to entries_path
#     else
#         render :edit 
#     end
# end

private

    def get_category
        @category = Category.find(params[:category_id])
    end

    def entry_params
        params.require(:entry).permit(:name,:category_id)
    end 

end

