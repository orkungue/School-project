class TimetablesController < ApplicationController
#  before_action :set_timetable, only: [:show, :edit, :update, :destroy]
    skip_before_action :verify_authenticity_token

  # GET /timetables
  # GET /timetables.json
  def index
    render file: 'timetables/index'
  end

  # GET /timetables/1
  # GET /timetables/1.json
  def show
  end

  # GET /timetables/new
  def new
    @timetable = Timetable.new
  end

  # GET /timetables/1/edit
  def edit
  end

  # POST /timetables
  # POST /timetables.json
  def create
    @timetable = Timetable.new(timetable_params)

    respond_to do |format|
      if @timetable.save
        format.html { redirect_to @timetable, notice: 'Timetable was successfully created.' }
        format.json { render :show, status: :created, location: @timetable }
      else
        format.html { render :new }
        format.json { render json: @timetable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /timetables/1
  # PATCH/PUT /timetables/1.json
  def update_partial

    get_user = User.find(session[:current_user])

    if !get_user.blank? || get_user.user_type_id == 3
      object = Timetable.find_by_class_id(get_user.class_id) rescue nil
      if object.blank?
        object = Timetable.new
        object.class_id = get_user.class_id
        object.timetable_content = params[:content]
        object.save!
      else
        object = Timetable.find_by_class_id(get_user.class_id) rescue nil
        object.timetable_content = params[:content]
        object.save!
      end
    else
      redirect_to :action => "login"
    end
    return true
  end

  # DELETE /timetables/1
  # DELETE /timetables/1.json
  def destroy
    @timetable.destroy
    respond_to do |format|
      format.html { redirect_to timetables_url, notice: 'Timetable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timetable
      @timetable = Timetable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def timetable_params
      params.require(:timetable).permit(:class_id, :timetable_content)
    end
end
