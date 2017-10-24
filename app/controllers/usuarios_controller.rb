class UsuariosController < ApplicationController
  def show
  end

  def index
  	@users = User.all
  	
  end
end
