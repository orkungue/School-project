class ApplicationSettingsController < ApplicationController
  skip_before_action :verify_authenticity_token

  # GET /application_settings
  # GET /application_settings.json
  def index
    @application_settings = ApplicationSetting.all
  end

  # GET /application_settings/1
  # GET /application_settings/1.json
  def show
  end

  # GET /application_settings/new
  def new
    @application_setting = ApplicationSetting.new
  end

  # GET /application_settings/1/edit
  def edit
  end

  # POST /application_settings
  # POST /application_settings.json
  def create
       set_to_class = User.find(params[:user_id])
       if set_to_class.user_type_id == 2
           if Setup.find_by_class_id(set_to_class.class_id).blank?
             object = Setup.new
             object.class_id = set_to_class.class_id
             object.enabled_apps = params[:content]
           object.save!
           elsif !Setup.find_by_class_id(set_to_class.class_id).blank?
             object = Setup.find_by_class_id(set_to_class.class_id)
             object.enabled_apps = params[:content]
             object.save!
           end
       end
       return true
  end

  # PATCH/PUT /application_settings/1
  # PATCH/PUT /application_settings/1.json
  def update
    respond_to do |format|
      if @application_setting.update(application_setting_params)
        format.html { redirect_to @application_setting, notice: 'Application setting was successfully updated.' }
        format.json { render :show, status: :ok, location: @application_setting }
      else
        format.html { render :edit }
        format.json { render json: @application_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /application_settings/1
  # DELETE /application_settings/1.json
  def destroy
    @application_setting.destroy
    respond_to do |format|
      format.html { redirect_to application_settings_url, notice: 'Application setting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application_setting
      @application_setting = ApplicationSetting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_setting_params
      params.require(:application_setting).permit(:setup)
    end
end
