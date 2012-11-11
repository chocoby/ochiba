require "spec_helper"

describe Admin::PhotosController do
  describe :routing do
    it { get('/admin/photos').should route_to 'admin/photos#index' }
    it { get('/admin/photos/new').should route_to 'admin/photos#new' }
    it { get('/admin/photos/1').should route_to 'admin/photos#show', id: '1' }
    it { get('/admin/photos/1/edit').should route_to 'admin/photos#edit', id: '1' }
    it { post('/admin/photos').should route_to 'admin/photos#create' }
    it { put('/admin/photos/1').should route_to 'admin/photos#update', id: '1' }
    it { delete('/admin/photos/1').should route_to 'admin/photos#destroy', id: '1' }
  end
end
