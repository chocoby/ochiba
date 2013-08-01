require "spec_helper"

describe Admin::ManufacturersController do
  describe :routing do
    it { expect(get: '/admin/manufacturers').to route_to 'admin/manufacturers#index' }
    it { expect(get: '/admin/manufacturers/new').to route_to 'admin/manufacturers#new' }
    it { expect(get: '/admin/manufacturers/1').to route_to 'admin/manufacturers#show', id: '1' }
    it { expect(get: '/admin/manufacturers/1/edit').to route_to 'admin/manufacturers#edit', id: '1' }
    it { expect(post: '/admin/manufacturers').to route_to 'admin/manufacturers#create' }
    it { expect(put: '/admin/manufacturers/1').to route_to 'admin/manufacturers#update', id: '1' }
    it { expect(delete: '/admin/manufacturers/1').to route_to 'admin/manufacturers#destroy', id: '1' }
  end
end
