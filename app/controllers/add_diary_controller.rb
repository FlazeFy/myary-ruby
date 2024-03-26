class AddDiaryController < ApplicationController
  # Helper Import
  include ConverterHelper

  def index
  end

  def create_diary
    # Attribute
    @diary_date = params[:diary_date]
    @diary_title = convert_title_format(params[:diary_title])

    @found = false
    @check = Diary.where(diary_date: @diary_date)

    # Check availableness
    if @check.length > 0
      @found = true
    end

    # Create
    if @found == false 

      @data = Diary.create(
        diary_title: @diary_title, 
        diary_desc: params[:diary_desc],
        diary_date: params[:diary_date], 
        diary_mood: params[:diary_mood],
        diary_tired: params[:diary_tired], 
        created_by: '1', #for now
      )

      NotifierMailer.with(diary: @data).diary_email.deliver_now
    else 
      render :new, status: :unprocessable_entity
    end
  
    # Exec
    if @data.save
      redirect_to '/'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def diary_params
    params.require(:diary).permit(
      :diary_title, :diary_desc, :diary_date, :diary_mood, :diary_tired
    )
  end
end
