class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :place
end


class Photo < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end


u = Photo.new
u.picture = params[:file] # Assign a file like this, or

# like this
File.open('somewhere') do |f|
  u.picture = f
end

u.save!
u.picture.url # => '/url/to/file.png'
u.picture.current_path # => 'path/to/file.png'
u.picture_identifier # => 'file.png'