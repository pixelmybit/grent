class PagesController < ApplicationController
  def home
    @geniuses = Genius.all
  end
end
