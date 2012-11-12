require 'spec_helper'

describe PhotosController do
  describe :routing do
    it { get('/').should route_to 'photos#index' }
  end
end
