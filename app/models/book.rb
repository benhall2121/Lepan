class Book < ActiveRecord::Base
  attr_accessible :author, :description, :is_date_specific, :title

  belongs_to :user
end
