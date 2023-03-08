class DescriptionsController < ApplicationController
  def index
    descriptions = Description.all
    render json: descriptions
  end

  def destroy 
    descriptions = Description.find(params[:id])
    descriptions.destroy
    head :no_content
  end

  def update
    descriptions = Description.find(params[:id])
    description.update!(description_params)
    render json: descriptions
  end

  private
  
  def description_params
    params.permit(:about_me, :looking_for, :match_id, :profile_id)
  end
end
