class HardWorker
  include Sidekiq::Worker

  def perform(*args)
    puts "hardly working"
  end
end
