Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  scope "/add", controller: "add_diary" do
    get "/", action: "index", as: "add_diary"

    post "/", action: "create_diary"
  end 
end
