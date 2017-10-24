class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :image, styles: { medium: "500x500>", thumb:"100x100>"}, default_url: "data:image/png;base64,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"
  validates_attachment_content_type :image, content_type:/\Aimage\/.*\Z/
end