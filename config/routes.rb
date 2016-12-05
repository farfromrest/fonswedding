Rails.application.routes.draw do
  get 'details', to: 'welcome#details', as: 'details'
  get 'preview', to: 'welcome#preview', as: 'welcome'
  get 'rsvp', to: 'rsvp#index', as: 'rsvp'
  get 'rsvp/confirm/:token', to: 'rsvp#confirm', as: 'confirm'
  post 'rsvp/confirm/:token', to: 'rsvp#confirm', as: 'confirm_submit'
  get 'rsvp/success/:token', to: 'rsvp#success', as: 'success'
  post 'rsvp/validate', as: 'validate'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
end
