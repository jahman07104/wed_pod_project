class UsersController < ApplicationController
  def index
    # will have a template in views .html file
    @users = User.all
  end
end
