class NeedsController < ApplicationController
  before_action :set_need

  def show; end

  private

  def set_need
    @need = Need.find(params[:id])
  end
end
