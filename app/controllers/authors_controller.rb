class AuthorsController < ApplicationController
  before_action :set_author, except: [:new, :create]
  def show
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to author_path(@author)
    else 
      render :new
    end
  end

  def edit
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end

  def set_author
    @author = Author.find(params[:id])    
  end
  
end
