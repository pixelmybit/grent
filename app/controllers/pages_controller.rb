class PagesController < ApplicationController
  def home
    @geniuses = Genius.first(3)
  end
end
