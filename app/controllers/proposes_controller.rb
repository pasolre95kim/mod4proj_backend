class ProposesController < ApplicationController

  def index
    render json: Propose.all
  end

  def show
    render json: Propose.find(params[:id])
  end

  def create
    render json: Propose.create(proposes_params)
  end

  def update
    Propose.find(params[:id]).update(proposes_params)
    render json: Propose.find(params[:id])
  end

  def destroy
    render json: Propose.find(params[:id]).destroy
  end


  private

  def proposes_params
    params.require(:propose).permit(:account_id, :venue_id, :cake, :flower, :theme)
  end

end
