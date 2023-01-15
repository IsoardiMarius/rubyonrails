# frozen_string_literal: true

# On défini tous les controllers pour notre models User
# On créer la méthode qui nous permet de créer une utilisateurs

class UsersController < ApplicationController
  # On créer un crud pour notre model User
  # On créer une méthode qui nous permet de créer un utilisateur
  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: :created
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  def new
    @user = User.new # On crée un nouveau post avec les params
  end

  # On créer une méthode qui nous permet de lister tous les utilisateurs
  def index
    users = User.all
    render json: users
  end

  # On créer une méthode qui nous permet de lister un utilisateur
  def show
    user = User.find(params[:id])
    render json: user
  end

  # On créer une méthode qui nous permet de mettre à jour un utilisateur
  def update
    user = User.find(params[:id])
    if user.update(user_params)
      render json: user
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  # On créer une méthode qui nous permet de supprimer un utilisateur
  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  private

  # On créer une méthode qui nous permet de définir les paramètres que l'on peut envoyer
  def user_params
    params.require(:user).permit(:name, :email, :password, :first_name, :last_name, :username)
  end

end
