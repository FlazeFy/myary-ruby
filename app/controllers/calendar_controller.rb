class CalendarController < ApplicationController
  # Query
  def index
    @diary = Diary.select(:id, :diary_title, :diary_date)
  end
end
