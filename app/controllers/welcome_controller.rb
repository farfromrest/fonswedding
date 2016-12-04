class WelcomeController < ApplicationController
  def index
  end

  def preview
    guest = Guest.all.first
  end
end
