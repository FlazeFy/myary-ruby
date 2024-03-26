class NotifierMailer < ApplicationMailer
    default from: 'newbie8801@gmail.com'

    def diary_email
        @diary = params[:diary]
        mail(to: 'flazen.edu@gmail.com', subject: 'Diary Report')
    end
end
