class Api::DiaryController < ApplicationController
  def get_diary_by_date
    @data = Diary.find_by(diary_date: params[:date])

    if @data.present?
      render json: { 
        status: "success", 
        message: "Diary found", 
        data: @data 
      }, status: :ok
    else
      render json: { 
        status: "error", 
        message: "Diary not found", 
        data: nil
      }, status: :not_found
    end
  end
end
