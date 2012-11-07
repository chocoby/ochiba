require 'spec_helper'

describe Admin::HomeController do
  describe :routing do
    it { get('/admin').should route_to 'admin/home#index' }
  end
end
