Rails.application.routes.draw do
  root "top#index"
  get "twitter" => "twitter#index", as: "twitter"
end
