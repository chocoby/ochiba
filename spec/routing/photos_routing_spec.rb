require 'spec_helper'

describe PhotosController do
  describe :routing do
    it { expect(get: '/').to route_to 'photos#index' }
    it { expect(get: '/photos/1').to route_to 'photos#show', id: '1' }
  end
end
