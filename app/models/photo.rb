class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :place
end


class Photo < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end