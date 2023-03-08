class ProfilesController < ApplicationController
  skip_before_action :authorize, only: [:index, :create]
  
  def index
    render json: Profile.all
  end

    def destroy
    profile = Profile.find(params[:id])
    profile.destroy
    header :no_content
    end

    def create
    profile = Profile.create!(profile_params)
    render json: profile, status: :created
    end
    
    def update
    profile = Profile.find(params[:id])
    profile.update!(profile_params)
    render json: profile
    end

    private
    
    def profile_params 
    params.permit(:image, :caption, :name, :matches_id, :description_id)
    end
end
