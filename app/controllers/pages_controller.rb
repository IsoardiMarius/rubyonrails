# frozen_string_literal: true

class PagesController < ApplicationController
  def salut
    @name = params[:name]
    # On recupere le param name dans l'url et on le stock dans une variable
    # @name pour pouvoir l'utiliser dans la view salut
  end

  def home; end
end
