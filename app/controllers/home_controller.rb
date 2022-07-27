class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    if current_user
      Analytics.track(event: 'home_visited', user_id: current_user.id, traits: { email: current_user.email })
    end
  end
end
