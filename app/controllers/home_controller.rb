class HomeController < ApplicationController
  def index
  	@new_snippet = Snippet.new
  end
end
