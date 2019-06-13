class PagesController < ApplicationController
	layout 'dashboard'
  def home
    @geniuses = Genius.first(3)
  end
end
