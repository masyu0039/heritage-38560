class HeritagesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :move_to_index, except: [:index, :new]
  def index
    @heritages = Heritage.all
  end

  def new
    @heritages = Heritage.new
  end

  def create 
    
  end

end
