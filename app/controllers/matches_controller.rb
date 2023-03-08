class MatchesController < ApplicationController
  skip_before_action :authorize, only: [:index, :show, :create, :update, :destroy]
  def index
    render json: Match.all
    end

  def show
    match = Match.find_by(id: params[:id])
    render json: match
  end

  def create
    create = Match.create(match_params)
    render json: create
  end

  # this is your delete function
    def destroy
        match = Match.find_by(id: params[:id])
        match.destroy
        head :no_content
      end

    def update
      match = Match.find_by(id: params[:id])
      match.update(match_params)
      render json: match
    end

    private
    
    def match_params
    params.permit(:name, :age, :image, :caption)
    end
  end
