Rails.application.routes.draw do
  
  resources :students do
    resources :lessons
  end

  root "homepages#homepage"

  get "/lessons", to: "lessons#all_lessons"

end
