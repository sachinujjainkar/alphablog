class ArticlesController < ApplicationController
    before_action :set_article, only: [:edit, :update, :show, :destroy]
    before_action :require_user, except: [:index,:show]
    before_action :require_same_user ,only: [:edit,:update,:destroy]
    

    def index
        @articles = Article.paginate(:page=>params[:page],per_page:2)
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
        # #@article=Article.find(params[:id])
        # render json: @article
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
        params.require(:article).permit(:title,:description,:avatar)
    end

    def require_same_user 
        if current_user != @article.user
            flash[:danger]="Only your contain is avilable for ths action"
            redirect_to root_path
        end
    end
    
    # def abc
    #      render json: {response => response, form_id: '#myform'}.to_json
    #      # render json: @article.to_json(only: [:title, :description])
    #     # format.json {render :json => true}
    # end



end

