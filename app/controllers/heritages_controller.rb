class HeritagesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :move_to_index, except: [:index, :new]
  def index

  end

  def new
    @heritages = Heritage.new
  end

end
