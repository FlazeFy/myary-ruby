Rails.application.routes.draw do
  # MVC
  scope "/add", controller: "add_diary" do
    get "/", action: "index", as: "add_diary"

    post "/", action: "create_diary"
  end 

  scope "/", controller: "book" do
    get "/", action: "index", as: "book"
  end 

  scope "/calendar", controller: "calendar" do
    get "/", action: "index", as: "calendar"
  end 

  # RestAPI
  scope "api/v1/diary", controller: "api/diary" do
    get "/by_date/:date", action: "get_diary_by_date"
    delete "/by_id/:id", action: "delete_diary_by_id"
  end 
end
