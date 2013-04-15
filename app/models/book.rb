class Book < ActiveRecord::Base
  attr_accessible :author, :description, :is_date_specific, :title, :book_code
  has_attached_file :cover

  belongs_to :user
  has_many :quotes

  validates_uniqueness_of :book_code
end
