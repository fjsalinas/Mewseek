class SearcherController < ApplicationController
  def show
  end

  def index
  	@songs = Song.all
  	@artists = Artist.all
  	@albums = Album.all
  	@genders = Gender.all
  end
end
