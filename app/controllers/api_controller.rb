class ApiController < ApplicationController
  skip_before_filter :require_login

  def get_book_quotes
  	@book = Book.find(:all, :conditions => ["book_code = ?", params[:book_code]])
    if !@book.empty?
      render :json => @book.to_json(:include => [:quotes])
    else
       render :json => { :errors => 'AHAHAHAHAHAHHHHHH' }, :status => 420
    end
  end
end
