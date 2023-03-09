class ProfilesController < ApplicationController
  skip_before_action :authorize, only: [:index, :create, :show, :update, :destroy]
  
  def index
    render json: Profile.all
  end

  def show
    profile= Profile.find_by(id: params[:id])
    render json: profile
  end

  def destroy
      profile = Profile.find_by(id: params[:id])
      profile.destroy
      head :no_content
  end

    def create
    profile = Profile.create!(profile_params)
    render json: profile, status: :created
    end
    
    def update
      profile = Profile.find_by(id: params[:id])
      profile.update(profile_params)
      render json: profile
    end

    private
    
    def profile_params 
    params.permit(:image, :caption, :name)
    end
end
