# frozen_string_literal: true

# On défini tous les controllers pour notre models User
# On créer la méthode qui nous permet de créer une utilisateurs

class UsersController < ApplicationController
  # On créer la méthode qui nous permet de créer une utilisateurs
  def new
    user_params = params.require(:user).permit(:username, :email, :first_name, :last_name)
    @user = User.create(user_params)
  end
end
