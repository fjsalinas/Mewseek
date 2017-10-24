class PlaylistUsersController < ApplicationController
  before_action :set_playlist_user, only: [:show, :edit, :update, :destroy]

  # GET /playlist_users
  # GET /playlist_users.json
  def index
    @playlist_users = PlaylistUser.all
  end

  # GET /playlist_users/1
  # GET /playlist_users/1.json
  def show
  end

  # GET /playlist_users/new
  def new
    @playlist_user = PlaylistUser.new
    create
  end

  # GET /playlist_users/1/edit
  def edit
  end

  # POST /playlist_users
  # POST /playlist_users.json
  def create
    @playlist_user = PlaylistUser.new(playlist_user_params)

    respond_to do |format|
      if @playlist_user.save
        format.html { redirect_to "/playlists"}
        format.json { render :show, status: :created, location: @playlist_user }
      else
        format.html { render :new }
        format.json { render json: @playlist_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playlist_users/1
  # PATCH/PUT /playlist_users/1.json
  def update
    respond_to do |format|
      if @playlist_user.update(playlist_user_params)
        format.html { redirect_to @playlist_user}
        format.json { render :show, status: :ok, location: @playlist_user }
      else
        format.html { render :edit }
        format.json { render json: @playlist_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playlist_users/1
  # DELETE /playlist_users/1.json
  def destroy
    @playlist_user.destroy
    respond_to do |format|
      format.html { redirect_to playlist_users_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlist_user
      @playlist_user = PlaylistUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def playlist_user_params
      params.permit(:playlist_id, :user_id)
    end
end
