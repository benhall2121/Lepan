class Book < ActiveRecord::Base
  attr_accessible :author, :description, :is_date_specific, :title, :book_code, :cover
  has_attached_file :cover, :whiny => false, 
  							:styles => { :icon => ["50x50>"], :small => ["128x128>"], :medium => ["300x300>"], :large => ["500x500>"], :xlarge => ["1224x1584>"] },
                :url  => "/assets/cover/:id/:style/:basename.:extension",
                :path => ":rails_root/public/assets/cover/:id/:style/:basename.:extension",
    						:convert_options => { :large => '-quality 100' },
            		:default_url => "/assets/cover/default/:style/default.png"

  belongs_to :user
  has_many :quotes

  validates_uniqueness_of :book_code
  validates_attachment_presence :cover
  validates_attachment_size :cover, :less_than => 10.megabytes

end
