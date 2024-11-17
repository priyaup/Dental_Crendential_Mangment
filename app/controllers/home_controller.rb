class HomeController < ApplicationController
  def index
    @q = params[:q] || {}

    if @q[:name_cont].present?
      @search_results = DentalRecord.ransack(@q)
      session[:search_query] = @q
    else
      @search_results = [] 
      session.delete(:search_query)
    end
  end
end