# frozen_string_literal: true

class PagesController < ApplicationController
  # ON RECUPERE LE PARAMS NAME DANS LE CONTROLLERS SALUT
  def salut
    @name = params[:name]
  end

  def home; end
end
