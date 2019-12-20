class ArticlesController < ApplicationController
    before_action :set_article, only: [:edit, :update, :show, :destroy]

    def index
        @articles= Article.all
    end

    def home
    end

    def about 
    end

    def new
        @article=Article.new
    end

    def edit
    end

    def create
        #render plain:params[:article].inspect
        @article=Article.new(article_params)
        @article.user=current_user
        if @article.save
            flash[:success] = "Saved sucessfully"
            redirect_to article_path(@article)
        else
            render 'new'
        end
    end

    def update
        #@article=Article.find(params[:id])
        if @article.update(article_params)
            flash[:notice] = "updated sucessfully"
            redirect_to article_path(@article)
        else
            render 'edit'
        end
    
    end


    def show
        #@article=Article.find(params[:id])

    end


    def destroy
        set_article
        @article.destroy
        flash[:notice] ="Deleted Successfuly"
        redirect_to articles_path
    end


    private

    def set_article
        @article=Article.find(params[:id])
    end
    
    def article_params
        params.require(:article).permit(:title,:description)
    end



end

