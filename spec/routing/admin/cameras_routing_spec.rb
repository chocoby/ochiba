require "spec_helper"

describe Admin::CamerasController do
  describe :routing do
    it { expect(get: '/admin/cameras').to route_to 'admin/cameras#index' }
    it { expect(get: '/admin/cameras/new').to route_to 'admin/cameras#new' }
    it { expect(get: '/admin/cameras/1').to route_to 'admin/cameras#show', id: '1' }
    it { expect(get: '/admin/cameras/1/edit').to route_to 'admin/cameras#edit', id: '1' }
    it { expect(post: '/admin/cameras').to route_to 'admin/cameras#create' }
    it { expect(put: '/admin/cameras/1').to route_to 'admin/cameras#update', id: '1' }
    it { expect(delete: '/admin/cameras/1').to route_to 'admin/cameras#destroy', id: '1' }
  end
end
