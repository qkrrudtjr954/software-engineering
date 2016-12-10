class ProfessorController < ApplicationController
  def pro_index
    @professor = Professor.all
  end
  def pro_detail
    @detail = Professor.find_by_id(params[:id])
  end
end
