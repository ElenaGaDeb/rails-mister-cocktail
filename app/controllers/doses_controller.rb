class DosesController < ApplicationController
  def create
    @dose = Dose.new(dose_params)
    if @dose.valid?
      @dose.save
      redirect_to dose_path(@dose)
    end
  end

  def new
    @dose = Dose.new(dose_params)
  end

  def delete
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to doses_path
  end

  private
  def dose_params
    params.require(:dose).permit(:description)
  end

end
