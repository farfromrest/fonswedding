Rails.application.routes.draw do
  get 'details', to: 'welcome#details', as: 'details'
  get 'rsvp', to: 'rsvp#index', as: 'rsvp'
  get 'rsvp/confirm/:token', to: 'rsvp#confirm', as: 'confirm'
  post 'rsvp/confirm/:token', to: 'rsvp#confirm', as: 'confirm_submit'
  get 'rsvp/success', to: 'rsvp#success', as: 'success'
  post 'rsvp/validate', as: 'validate'
  get 'gift', to: 'gift#index', as: 'gift'
  post 'gift/confirm', to: 'gift#confirm', as: 'gift_confirm'
  get 'gift/thank_you', to: 'gift#thank_you', as: 'gift_thank_you'
  post 'gift', to: 'gift#create', as: 'gift_submit'
  root to: 'welcome#index', as: 'welcome'
end
