class Album < ActiveRecord::Base
	has_many :songs
	belongs_to :artist
	has_attached_file :image, styles: {medium: "400x300>", thumb: "100x100>" }, default_url: "/images/:style/misiing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
