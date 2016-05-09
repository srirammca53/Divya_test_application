class PatientAttachmentsController < ApplicationController
  before_action :set_patient_attachment, only: [:show, :edit, :update, :destroy]

  # GET /patient_attachments
  # GET /patient_attachments.json
  def index
    @patient_attachments = PatientAttachment.all
  end

  # GET /patient_attachments/1
  # GET /patient_attachments/1.json
  def show
  end

  # GET /patient_attachments/new
  def new
    @patient_attachment = PatientAttachment.new
  end

  # GET /patient_attachments/1/edit
  def edit
  end

  # POST /patient_attachments
  # POST /patient_attachments.json
  def create
    @patient_attachment = PatientAttachment.new(patient_attachment_params)

    respond_to do |format|
      if @patient_attachment.save
        format.html { redirect_to @patient_attachment, notice: 'Patient attachment was successfully created.' }
        format.json { render :show, status: :created, location: @patient_attachment }
      else
        format.html { render :new }
        format.json { render json: @patient_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_attachments/1
  # PATCH/PUT /patient_attachments/1.json
  def update
  respond_to do |format|
    if @patient_attachment.update(patient_attachment_params)
      format.html { redirect_to @patient_attachment.patient, notice: 'patient attachment was successfully updated.' }
    end 
  end
end

  # DELETE /patient_attachments/1
  # DELETE /patient_attachments/1.json
  def destroy
    @patient_attachment.destroy
    respond_to do |format|
      format.html { redirect_to patient_attachments_url, notice: 'Patient attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_attachment
      @patient_attachment = PatientAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_attachment_params
      params.require(:patient_attachment).permit(:patient_id, :avatar)
    end
end
