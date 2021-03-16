class ArticlesController < ApplicationController 
	before_action :set_user, only: [:show, :update, :destroy,:edit]
	def index
		@articles = Article.all
	end

	def home
		
	end

	def about
		#shubham alnjewar
	end


	def new
		@article = Article.new
	end

	def show
		@article = Article.find(params[:id])
	end

	def create
 		@article = Article.new(article_params)
    if @article.save
    	 flash[:notice]="New Create Article "
       redirect_to @article
    else
       render 'new'
    end
  end

  def edit
    
  end

  def update
  	if @article.update(article_params)
  		 flash[:notice]="Article Update"
  		redirect_to @article
  	else
  		render 'new'
  	end	
  end

  def destroy
  	if@article.destroy
  		 flash[:notice]="Article is Destroy"
  		redirect_to articles_path
  	else
  		render 'new'
  	end		
  end

 private 

 	def article_params
 		params.require(:article).permit(:title,:description)
 	end

 	def set_user
 		@article = Article.find(params[:id])
 	end

end	