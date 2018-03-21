require 'rails_helper'
RSpec.describe EntityWorker, type: :worker do
  it 'creates an entity' do
    kleenex!
    EntityWorker.perform_async
    soon do
      expect(Entity.count).to eq 1
    end
  end
end
