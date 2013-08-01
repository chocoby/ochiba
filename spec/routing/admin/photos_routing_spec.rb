require "spec_helper"

describe Admin::PhotosController do
  describe :routing do
    it { expect(get: '/admin/photos').to route_to 'admin/photos#index' }
    it { expect(get: '/admin/photos/new').to route_to 'admin/photos#new' }
    it { expect(get: '/admin/photos/1').to route_to 'admin/photos#show', id: '1' }
    it { expect(get: '/admin/photos/1/edit').to route_to 'admin/photos#edit', id: '1' }
    it { expect(post: '/admin/photos').to route_to 'admin/photos#create' }
    it { expect(put: '/admin/photos/1').to route_to 'admin/photos#update', id: '1' }
    it { expect(delete: '/admin/photos/1').to route_to 'admin/photos#destroy', id: '1' }
  end
end
