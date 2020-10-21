class DonesController < ApplicationController


  def create
    @meeting = Meeting.find(params[:meeting_id])
    @done = Done.new(done_params)
    if @done.save
      redirect_to root_path, notice:'タスクが完了しました'
    else 
      redirect_to root_path
    end
  end


  private

  def done_params
    params.permit(:hidden).merge(meeting_id: @meeting.id)
  end

  
end