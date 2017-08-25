Rails.application.routes.draw do
  root to: "home#index"

  post "text", to: "home#text"
end
