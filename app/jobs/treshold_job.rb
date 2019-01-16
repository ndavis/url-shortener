class ThresholdJob < ActiveJob::Base
  def perform
   current_count = Url.all.count

   max_rows = ((36**ENV['char_length']) * 0.80).to_i
   #threshold is 80%

    if current_count >= max_rows
      #fire off an alert, perhaps to New Relic
    end
  end
end
