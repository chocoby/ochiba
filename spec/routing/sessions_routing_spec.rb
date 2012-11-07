require 'spec_helper'

describe SessionsController do
  describe :routing do
    it { get('/login').should route_to 'sessions#new' }
    it { post('/login').should route_to 'sessions#create' }
    it { delete('/logout').should route_to 'sessions#destroy' }
  end
end
