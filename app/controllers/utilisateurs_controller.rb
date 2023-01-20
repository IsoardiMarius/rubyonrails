# frozen_string_literal: true

# On défini tous les controllers pour notre models Utilisateur
# On créer la méthode qui nous permet de créer une utilisateurs

class UtilisateursController < ApplicationController
  # On créer un crud pour notre model Utilisateur
  # On créer une méthode qui nous permet de créer un utilisateur
  def create
    utilisateur = Utilisateur.new(user_params)
    if utilisateur.save
      render json: utilisateur, status: :created
    else
      render json: utilisateur.errors, status: :unprocessable_entity
    end
  end

  def new
    @utilisateurs = Utilisateur.new # On crée un nouveau post avec les params
  end

  # On créer une méthode qui nous permet de lister tous les utilisateurs
  def index
    utilisateurs = Utilisateur.all
    render json: utilisateurs
  end

  # On créer une méthode qui nous permet de lister un utilisateur
  def show
    utilisateur = Utilisateur.find(params[:id])
    render json: utilisateur
  end

  # On créer une méthode qui nous permet de mettre à jour un utilisateur
  def update
    utilisateur = Utilisateur.find(params[:id])
    if user.update(user_params)
      render json: utilisateur
    else
      render json: utilisateur.errors, status: :unprocessable_entity
    end
  end

  # On créer une méthode qui nous permet de supprimer un utilisateur
  def destroy
    utilisateur = Utilisateur.find(params[:id])
    utilisateur.destroy
  end

  private

  # On créer une méthode qui nous permet de définir les paramètres que l'on peut envoyer
  def user_params
    params.require(:utilisateur).permit(:name, :email, :password, :first_name, :last_name, :username)
  end

end
