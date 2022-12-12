class HeritagesController < ApplicationController
  before_action :set_heritage, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]

  def index
    @heritages = Heritage.includes(:user)
  end

  def new
    @heritage = Heritage.new
  end

  def create
      @heritage = Heritage.new(heritage_params)
      if @heritage.save
        redirect_to root_path
      else
        render :new
      end
    end

    def destroy
      heritage = Heritage.find(params[:id])
      heritage.destroy
    end

    def edit
    end

    def update
      heritage = Heritage.find(params[:id])
      heritage.update(heritage_params)
    end
  
    def show
      
    end

  private

  def heritage_params
    params.require(:heritage).permit(:title, :image, :catch_copy, :concept).merge(user_id: current_user.id)
  end

  def set_heritage
    @heritage = Heritage.find(params[:id])
  end

  def contributor_confirmation
    redirect_to root_path unless current_user == @heritage.user
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
