class VoiceChecksController < ApplicationController
  before_action :set_voice_check, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_evaluator!, only: [:new, :create]


  def index
    @voice_checks = VoiceCheck.all
  end


  def show
  end

  def new
    @voice_check = VoiceCheck.new
  end


  def edit
  end


  def create
    @voice_check = VoiceCheck.new(voice_check_params)

    respond_to do |format|
      if @voice_check.save
        format.html { redirect_to @voice_check, notice: '登録しました' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @voice_check.update(voice_check_params)
        format.html { redirect_to @voice_check, notice: '更新しました' }
      else
        format.html { render :edit }
      end
    end
  end


  def destroy
    @voice_check.destroy
    respond_to do |format|
      format.html { redirect_to voice_checks_url, notice: '削除しました' }
    end
  end


  private

    def set_voice_check
      @voice_check = VoiceCheck.find(params[:id])
    end


    def voice_check_params
      params.require(:voice_check).permit(:staff_num, :evaluator_id, :evaluator_name, :log_date, :log_time, :contact_details, :response_result, :evaluator_comment, :status, :customer_miss, :business_miss, :compliance_miss, :datetime, )
    end
end
