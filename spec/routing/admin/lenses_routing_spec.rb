require "spec_helper"

describe Admin::LensesController do
  describe :routing do
    it { expect(get: '/admin/lenses').to route_to 'admin/lenses#index' }
    it { expect(get: '/admin/lenses/new').to route_to 'admin/lenses#new' }
    it { expect(get: '/admin/lenses/1').to route_to 'admin/lenses#show', id: '1' }
    it { expect(get: '/admin/lenses/1/edit').to route_to 'admin/lenses#edit', id: '1' }
    it { expect(post: '/admin/lenses').to route_to 'admin/lenses#create' }
    it { expect(put: '/admin/lenses/1').to route_to 'admin/lenses#update', id: '1' }
    it { expect(delete: '/admin/lenses/1').to route_to 'admin/lenses#destroy', id: '1' }
  end
end
