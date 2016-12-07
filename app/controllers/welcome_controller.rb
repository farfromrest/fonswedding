class WelcomeController < ApplicationController
  def index
  end

  def details
    @days = (ApplicationHelper::WEDDING_DATE - Date.today).to_i
  end

end
