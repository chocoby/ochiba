require 'spec_helper'

describe SessionsController do
  describe :routing do
    it { expect(get: '/login').to route_to 'sessions#new' }
    it { expect(post: '/login').to route_to 'sessions#create' }
    it { expect(delete: '/logout').to route_to 'sessions#destroy' }
  end
end
