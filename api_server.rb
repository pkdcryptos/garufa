require 'cuba'
require './subscriptions'

ApiServer = Cuba.new do
  on get do
    Subscriptions.notify 'channel-1', {test: 'data'}
  end
end
