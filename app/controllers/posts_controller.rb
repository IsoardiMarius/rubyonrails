# frozen_string_literal: true

# On défini tous les controllers pour notre models Post / Tous les controllers sont reliés
# à leurs routes dans le fichier config/routes.rb
class PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy] # On appelle la méthode set_post avant les méthodes show, edit, update et destroy de ce controller (on peut aussi utiliser except: [:index, :new, :create] pour exclure les méthodes index, new et create)
  # On défini les params qu'on peut utiliser pour créer un post
  # Cette page affiche tous les posts sur cette page pour le DRY(Do not repeat yourself)
  def index
    @posts = Post.all # On recupere tous les posts, on les stock dans une variable @posts pour pouvoir les utiliser dans la view index
  end

  # COMMENT Cette page affiche le post en fonction de l'id dans l'url
  def show
  end

  # Cette page affichera le formulaire pour créer un nouveau post
  def edit

  end

  # Cette méthode permet de mettre à jour un post
  def update
    @post.update(post_params) # On met a jour le post avec les params

    redirect_to posts_path # On redirige vers la page index
  end

  # Cette méthode permet d'afficher la page pour créer un nouveau post
  def new
    @post = Post.new # On crée un nouveau post avec les params
  end

  # Cette méthode permet de créer un nouveau post
  def create
    @post = Post.create(post_params) # On crée un nouveau post avec les params
    redirect_to posts_path # On redirige vers la page index
  end

  # Cette méthode permet de supprimer un post
  def destroy
    @post.destroy # On supprime le post
    redirect_to posts_path # On redirige vers la page index
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end
  # On défini les params qu'on peut utiliser pour créer un post
  def post_params
    params.require(:post).permit(:title, :content) # On défini les params qu'on peut utiliser pour créer un post
  end
end
