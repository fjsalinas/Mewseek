class Song < ActiveRecord::Base
	has_many :artists
	belongs_to :album
	belongs_to :artist
end
