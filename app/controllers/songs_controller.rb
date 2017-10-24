class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  # GET /songs
  # GET /songs.json
  def index
    @songs = Song.all
    @artists = Artist.all
    @albums = Album.all
    @playlists_user = PlaylistUser.where("user_id=?",current_user)
    @playlists = Playlist.all
  end

  # GET /songs/1
  # GET /songs/1.json
  def show
    @album = Album.find_by_id(@song.album_id)
    @artist = Artist.find_by_id(@song.artist_id)
  end

  # GET /songs/new
  def new
    @song = Song.new
    @genders = Gender.all
    @artists = Artist.all
    @albums = Album.all
  end

  # GET /songs/1/edit
  def edit
    @artists = Artist.all
    @albums = Album.all
    @genders = Gender.all
  end

  # POST /songs
  # POST /songs.json
  def create
    @song = Song.new(song_params)

    respond_to do |format|
      if @song.save
        format.html { redirect_to @song}
        format.json { render :show, status: :created, location: @song }
      else
        format.html { render :new }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /songs/1
  # PATCH/PUT /songs/1.json
  def update
    respond_to do |format|
      if @song.update(song_params)
        format.html { redirect_to @song}
        format.json { render :show, status: :ok, location: @song }
      else
        format.html { render :edit }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /songs/1
  # DELETE /songs/1.json
  def destroy
    @song.destroy
    respond_to do |format|
      format.html { redirect_to songs_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_params
      params.require(:song).permit(:name, :year, :artist_id, :album_id, :gender_id, :duration, :punctuation)
    end
end
