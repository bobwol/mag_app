class PushesController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_push, only: [:show, :edit, :update, :destroy]

  # GET /pushes
  # GET /pushes.json
  def index
    @pushes = Push.all
  end

  # GET /pushes/1
  # GET /pushes/1.json
  def show
  end

  # GET /pushes/new
  def new
    @push = Push.new
  end

  # GET /pushes/1/edit
  def edit
  end

  # POST /pushes
  # POST /pushes.json
  def create
    @push = Push.new(push_params)
    @push.user = current_user

    respond_to do |format|
      if @push.save
        format.html { redirect_to @push, notice: 'Push was successfully created.' }
        format.json { render :show, status: :created, location: @push }
      else
        format.html { render :new }
        format.json { render json: @push.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pushes/1
  # PATCH/PUT /pushes/1.json
  def update
    respond_to do |format|
      if @push.update(push_params)
        format.html { redirect_to @push, notice: 'Push was successfully updated.' }
        format.json { render :show, status: :ok, location: @push }
      else
        format.html { render :edit }
        format.json { render json: @push.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pushes/1
  # DELETE /pushes/1.json
  def destroy
    @push.destroy
    respond_to do |format|
      format.html { redirect_to pushes_url, notice: 'Push was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_push
      @push = Push.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def push_params
      params.require(:push).permit(:push_message, :delivery_time, :push_app_id, :push_client_key, :push_restapi_key, :appstore_prod_cert, :appstore_dev_cert, :gcm_sender_id, :gcm_api_key, :app_id, :user_id)
    end
end
