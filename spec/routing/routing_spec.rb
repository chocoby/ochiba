# coding: utf-8
require 'spec_helper'

describe :routes do
  describe :sessions do
    it { get('/login').should route_to 'sessions#new' }
    it { post('/login').should route_to 'sessions#create' }
    it { delete('/logout').should route_to 'sessions#destroy' }
  end
end
