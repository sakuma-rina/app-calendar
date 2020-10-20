class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:show, :edit, :update, :destroy]

 
  def index
    @meetings = Meeting.all
  end

 
  def show
  end

  def new
    @meeting = Meeting.new
  end

  def edit
  end

  def create
    @meeting = Meeting.new(meeting_params)

    respond_to do |format|
      if @meeting.save
        format.html { redirect_to @meeting, notice: 'Meeting was successfully created.' }
        format.json { render :show, status: :created, location: @meeting }
      else
        format.html { render :new }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @meeting.update(meeting_params)
        format.html { redirect_to @meeting, notice: 'Meeting was successfully updated.' }
        format.json { render :show, status: :ok, location: @meeting }
      else
        format.html { render :edit }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    if @meeting.destroy
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'List was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      render :index
    end
  end

  def dones
    @meetings = Meeting.all
  end



  private
    def set_meeting
      @meeting = Meeting.find(params[:id])
    end

  
    def meeting_params
      params.require(:meeting).permit(:name, :start_time).merge(user_id: current_user.id)
    end
end

