require "spec_helper"

describe Admin::LensesController do
  describe :routing do
    it { get('/admin/lenses').should route_to 'admin/lenses#index' }
    it { get('/admin/lenses/new').should route_to 'admin/lenses#new' }
    it { get('/admin/lenses/1').should route_to 'admin/lenses#show', id: '1' }
    it { get('/admin/lenses/1/edit').should route_to 'admin/lenses#edit', id: '1' }
    it { post('/admin/lenses').should route_to 'admin/lenses#create' }
    it { put('/admin/lenses/1').should route_to 'admin/lenses#update', id: '1' }
    it { delete('/admin/lenses/1').should route_to 'admin/lenses#destroy', id: '1' }
  end
end
