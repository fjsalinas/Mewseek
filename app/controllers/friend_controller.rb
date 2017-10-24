class FriendController < ApplicationController
  def index
  	@friends = Follow.select(:user_id_2).where("user_id_1=?", current_user.id.to_s).distinct
  	@users = User.all
  end

  def show
  	@friend = User.find_by_id(params[:id])
  	@playlists_user = PlaylistUser.where("user_id=?",params[:id])
  	@playlists = Playlist.all
  	Rails.logger.debug "AAAAAAAAAAAAAAAAAAA #{@playlists_user.inspect}"
  end
end
