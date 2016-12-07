Rails.application.routes.draw do
  get 'details', to: 'welcome#details', as: 'details'
  get 'rsvp', to: 'rsvp#index', as: 'rsvp'
  get 'rsvp/confirm/:token', to: 'rsvp#confirm', as: 'confirm'
  post 'rsvp/confirm/:token', to: 'rsvp#confirm', as: 'confirm_submit'
  get 'rsvp/success/:token', to: 'rsvp#success', as: 'success'
  post 'rsvp/validate', as: 'validate'


  root to: 'welcome#index', as: 'welcome'
end
