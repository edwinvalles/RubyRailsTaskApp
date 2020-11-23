class CategoriesController < ApplicationController

    def index
        @categories = Category.all
    end

    # def show
    #     @categories = Category.find(params[:id])
    # end

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(category_params)
        if @category.save
            redirect_to categories_path
        else
            render :new
        end
    end 

    # def edit
    #     @article = Article.find(params[:id])
    # end 

    # def update
    #     @article = Article.find(params[:id])
    #     if @article.update(article_params)
    #         redirect_to articles_path
    #     else
    #         render :edit
    #     end
    # end

    # def delete
    #     @article = Article.find(params[:id])
    #     if @article.destroy
    #         redirect_to articles_path
    #     else
    #         render :edit
    #     end
    # end

    private
    def category_params
        params.require(:category).permit(:name)
    end 

end