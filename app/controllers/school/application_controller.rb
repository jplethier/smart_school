class School::ApplicationController < ApplicationController
  before_filter :authenticate_school!

  def home
    
  end
end
