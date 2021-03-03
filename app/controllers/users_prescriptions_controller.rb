class UsersPrescriptionsController < ApplicationController
  before_action :set_users_prescription, only: [:show, :edit, :update, :destroy]

  # GET /users_prescriptions
  # GET /users_prescriptions.json
  def index
    @users_prescriptions = UsersPrescription.all
  end

  # GET /users_prescriptions/1
  # GET /users_prescriptions/1.json
  def show
  end

  # GET /users_prescriptions/new
  def new
    @users_prescription = UsersPrescription.new
  end

  # GET /users_prescriptions/1/edit
  def edit
  end

  # POST /users_prescriptions
  # POST /users_prescriptions.json
  def create
    @users_prescription = UsersPrescription.new(users_prescription_params)

    respond_to do |format|
      if @users_prescription.save
        format.html { redirect_to @users_prescription, notice: 'Users prescription was successfully created.' }
        format.json { render :show, status: :created, location: @users_prescription }
      else
        format.html { render :new }
        format.json { render json: @users_prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_prescriptions/1
  # PATCH/PUT /users_prescriptions/1.json
  def update
    respond_to do |format|
      if @users_prescription.update(users_prescription_params)
        format.html { redirect_to @users_prescription, notice: 'Users prescription was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_prescription }
      else
        format.html { render :edit }
        format.json { render json: @users_prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_prescriptions/1
  # DELETE /users_prescriptions/1.json
  def destroy
    @users_prescription.destroy
    respond_to do |format|
      format.html { redirect_to users_prescriptions_url, notice: 'Users prescription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_prescription
      @users_prescription = UsersPrescription.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_prescription_params
      params.fetch(:users_prescription, {})
    end
end
