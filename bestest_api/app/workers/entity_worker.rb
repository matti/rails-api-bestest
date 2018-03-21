class EntityWorker
  include Sidekiq::Worker

  def perform(*args)
    Entity.create!
  end
end
