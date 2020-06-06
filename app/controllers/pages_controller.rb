class PagesController < ApplicationController
#before_action :set_comment, only: [:show, :edit, :update, :destroy]
    skip_before_action :verify_authenticity_token
    
    def index
        redirect_to articles_path if logged_in?
    end
    
    def home
    end

    def about
    end

    def alpha
       # beta = params[:id],
        name=params[:first],
        last=params[:last],
        email=params[:email],
        byebug
        render json: {response => true , name: name,last:last,email:email}.to_json
    end


    
end