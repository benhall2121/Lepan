class Quote < ActiveRecord::Base
  attr_accessible :description, :order_number, :relevant_date, :who_said_it, :book_id, :quote_pic, :position
  has_attached_file :quote_pic, :whiny => false, 
  							:styles => { :icon => ["50x50>"], :small => ["128x128>"], :medium => ["300x300>"], :large => ["500x500>"], :xlarge => ["1224x1584>"] },
                			:url  => "/assets/quote_pic/:id/:style/:basename.:extension",
                			:path => ":rails_root/public/assets/quote_pic/:id/:style/:basename.:extension",
    						:convert_options => { :large => '-quality 100' },
            				:default_url => "/assets/quote_pic/default/:style/default.png"


  belongs_to :book
end
