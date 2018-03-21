require 'rails_helper'
RSpec.describe HardWorker, type: :worker do
  subject { HardWorker }
  it 'works hard' do
    subject.perform_async
  end
end
