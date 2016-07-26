class TwitterController < ApplicationController
  def index
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "l1oXowPMXdN00pHEzKqgmu9C4"
      config.consumer_secret     = "miq2pYdbw0uWythviePFL9p60n8Ft7Y5c9UWFeEgCQIY5ON5GU"
      config.access_token        = "736513871326806017-sP4MIPkj9uSlcwQ2PPi4OQipgPOCFoZ"
      config.access_token_secret = "DvDZtjfgjpzZsIoLwtZobLWyQVIsk2oWwMujIixN7SeeD"
    end
    @message = client.search("#高岩遼 -rt", :lang => "ja").first.text
  end
end
