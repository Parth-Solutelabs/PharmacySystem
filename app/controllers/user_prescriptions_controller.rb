class UserPrescriptionsController < ApplicationController
  before_action :set_user_prescription, only: [:show, :edit, :update, :destroy]

  # GET /user_prescriptions
  # GET /user_prescriptions.json
  def index
    @user_prescriptions = UserPrescription.all
  end

  # GET /user_prescriptions/1
  # GET /user_prescriptions/1.json
  def show
  end

  # GET /user_prescriptions/new
  def new
    @user_prescription = UserPrescription.new
  end

  # GET /user_prescriptions/1/edit
  def edit
  end

  # POST /user_prescriptions
  # POST /user_prescriptions.json
  def create
    @user_prescription = UserPrescription.new(user_prescription_params)

    respond_to do |format|
      if @user_prescription.save
        format.html { redirect_to @user_prescription, notice: 'User prescription was successfully created.' }
        format.json { render :show, status: :created, location: @user_prescription }
      else
        format.html { render :new }
        format.json { render json: @user_prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_prescriptions/1
  # PATCH/PUT /user_prescriptions/1.json
  def update
    respond_to do |format|
      if @user_prescription.update(user_prescription_params)
        format.html { redirect_to @user_prescription, notice: 'User prescription was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_prescription }
      else
        format.html { render :edit }
        format.json { render json: @user_prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_prescriptions/1
  # DELETE /user_prescriptions/1.json
  def destroy
    @user_prescription.destroy
    respond_to do |format|
      format.html { redirect_to user_prescriptions_url, notice: 'User prescription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_prescription
      @user_prescription = UserPrescription.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_prescription_params
      params.fetch(:user_prescription, {})
    end
end
