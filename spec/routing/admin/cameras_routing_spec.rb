require "spec_helper"

describe Admin::CamerasController do
  describe :routing do
    it { get('/admin/cameras').should route_to 'admin/cameras#index' }
    it { get('/admin/cameras/new').should route_to 'admin/cameras#new' }
    it { get('/admin/cameras/1').should route_to 'admin/cameras#show', id: '1' }
    it { get('/admin/cameras/1/edit').should route_to 'admin/cameras#edit', id: '1' }
    it { post('/admin/cameras').should route_to 'admin/cameras#create' }
    it { put('/admin/cameras/1').should route_to 'admin/cameras#update', id: '1' }
    it { delete('/admin/cameras/1').should route_to 'admin/cameras#destroy', id: '1' }
  end
end
