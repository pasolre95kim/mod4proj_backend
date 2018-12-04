class AccountsController < ApplicationController

  def index
    render json: Account.all
  end

  def show
    render json: Account.find(params[:id]).to_json(include: [proposes: {include: :venue}])
  end

  def create
    render json: Account.create(accounts_params)
  end

  def update
  Account.find(params[:id]).update(accounts_params)
   render json: Account.find(params[:id])
  end

  def destroy
    render json: Account.find(params[:id]).destroy
  end

private

  def accounts_params
    params.require(:account).permit(:bride, :groom)
  end
end
