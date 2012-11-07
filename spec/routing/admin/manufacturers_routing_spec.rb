require "spec_helper"

describe Admin::ManufacturersController do
  describe :routing do
    it { get('/admin/manufacturers').should route_to 'admin/manufacturers#index' }
    it { get('/admin/manufacturers/new').should route_to 'admin/manufacturers#new' }
    it { get('/admin/manufacturers/1').should route_to 'admin/manufacturers#show', id: '1' }
    it { get('/admin/manufacturers/1/edit').should route_to 'admin/manufacturers#edit', id: '1' }
    it { post('/admin/manufacturers').should route_to 'admin/manufacturers#create' }
    it { put('/admin/manufacturers/1').should route_to 'admin/manufacturers#update', id: '1' }
    it { delete('/admin/manufacturers/1').should route_to 'admin/manufacturers#destroy', id: '1' }
  end
end
