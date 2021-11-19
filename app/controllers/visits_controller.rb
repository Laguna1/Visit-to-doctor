class VisitsController < ApplicationController
  before_action :authenticate_user!

  def index
    @visits = Visit.all.order('created_at DESC')
  end

  def show
    @visit = Visit.find(params[:id])
  end

  def new
    @visit = Visit.new
  end

  def create
    @visit = current_user.created_visits.build(visit_params)
    if @visit.save
      redirect_to @visit
    else
      render 'new'
    end
  end

  private

  def visit_params
    params.require(:visit).permit(:date, :notes)
  end
end
