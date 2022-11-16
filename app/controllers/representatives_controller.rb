# frozen_string_literal: true

class RepresentativesController < ApplicationController
  def index
    @representatives = Representative.all
  end

  def show
    flash[:notice] = 'singming'
  end

  def profile
    flash[:notice] = 'Liza Singming'
  end

end
