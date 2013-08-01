require 'spec_helper'

describe Admin::HomeController do
  describe :routing do
    it { expect(get: '/admin').to route_to 'admin/home#index' }
  end
end
