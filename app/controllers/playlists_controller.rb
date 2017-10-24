class PlaylistsController < ApplicationController
  before_action :set_playlist, only: [:show, :edit, :update, :destroy]

  # GET /playlists
  # GET /playlists.json
  def index
    @playlists_user = PlaylistUser.where("user_id=?",current_user)
    @playlists = Playlist.all
  end

  # GET /playlists/1
  # GET /playlists/1.json
  def show
    @list_songs = PlaylistContent.select(:song_id).where("playlist_id=?",@playlist.id).distinct
    @songs = Song.all
    @artists = Artist.all
    @albums = Album.all
  end

  # GET /playlists/new
  def new
    @playlist = Playlist.new
    @playlist_user = PlaylistUser.new
  end

  # GET /playlists/1/edit
  def edit
  end

  # POST /playlists
  # POST /playlists.json
  def create
    @playlist = Playlist.new(playlist_params)
      if @playlist.save 
        @new_playlist_user_params = {
          :user_id => current_user.id,
          :playlist_id => @playlist.id,
        }
        @playlist_user = PlaylistUser.new(@new_playlist_user_params)
        if @playlist_user.save
          respond_to do |format|
              format.html { redirect_to '/playlists'}
              format.json { render :show, status: :created, location: @playlist }
        end
      else
        format.html { render :new }
        format.json { render json: @playlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playlists/1
  # PATCH/PUT /playlists/1.json
  def update
    respond_to do |format|
      if @playlist.update(playlist_params)
        format.html { redirect_to @playlist}
        format.json { render :show, status: :ok, location: @playlist }
      else
        format.html { render :edit }
        format.json { render json: @playlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playlists/1
  # DELETE /playlists/1.json
  def destroy
    #@playlist.destroy
    Rails.logger.debug "AAAAAAAAAAAAAAAAAAa #{@playlists_user}"
    @playlists_user.destroy
    respond_to do |format|
      format.html { redirect_to playlists_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlist
      @playlist = Playlist.find(params[:id])
      @playlists_user = PlaylistUser.find_by(playlist_id: params[:id], user_id: current_user)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def playlist_params
      params.require(:playlist).permit(:name)
    end

end
