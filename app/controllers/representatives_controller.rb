# frozen_string_literal: true

class RepresentativesController < ApplicationController
  def index
    @representatives = Representative.all
  end

  def show
    @representative = Representative.all.find params[:id]
    flash[:notice] = 'Test'
  end
end
