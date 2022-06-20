Rails.application.routes.draw do
  
  resources :students do
    resources :lessons
  end

  root "homepages#homepage"

end
