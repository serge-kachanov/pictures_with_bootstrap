class Post < ActiveRecord::Base
  attr_accessible :pic
  has_attached_file :pic, :styles => { :small => "250x250>" }
  validates_attachment_presence :pic
  validates_attachment_size :pic, :less_than => 5.megabytes
  validates_attachment_content_type :pic, :content_type => ['image/jpeg', 'image/png']
end
