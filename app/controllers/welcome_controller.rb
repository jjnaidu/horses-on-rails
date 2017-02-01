class WelcomeController < ApplicationController
  def index
    @horses = Horse.recent
  end
end
