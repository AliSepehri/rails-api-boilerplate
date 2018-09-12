class ApplicationController < ActionController::API
  def index
    render json: { app_name: 'rails-api-boilerplate' }, status: 200
  end
end
