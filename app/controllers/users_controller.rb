class UsersController < ApplicationController
  def my_portafolio
    @tracked_stocks = current_user.stocks
  end
end
