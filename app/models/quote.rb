class Quote < ActiveRecord::Base
  attr_accessible :description, :order_number, :relevant_date, :who_said_it
end
