require 'spec_helper'

describe PhotosController do
  describe :routing do
    it { expect(get: '/').to route_to 'photos#index' }
  end
end
