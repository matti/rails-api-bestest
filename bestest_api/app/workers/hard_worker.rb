class HardWorker
  include Sidekiq::Worker

  def perform(*_args)
    puts 'hardly working'
  end
end
