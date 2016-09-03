class Stopwatch
  attr_accessor :start_time

  def time_box_block
    start
    yield
    stop
  end

  def start
    @start_time = Time.now
  end

  def stop
    puts "\n\nPROGRAM TOOK #{Time.now - @start_time} SECONDS TO RUN\n\n"
  end
end
