class StocksController < ApplicationController

  def search
    if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])

      if @stock
        # Try again to render only the part that needs to be updated with ajax: create a js template!!
        # respond_to do | format |
        #   format.js { render partial: 'users/result_js' }
        # end
        render 'users/my_portafolio'
      else
        flash[:alert] = "Please enter a valid symbol to search"
        redirect_to my_portafolio_path
      end
    else
      flash[:alert] = "Please enter a symbol to search"
      redirect_to my_portafolio_path
    end
  end
end