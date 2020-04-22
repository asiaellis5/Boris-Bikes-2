require 'bike_container'
require 'support/shared_examples_for_bike_container'

class BikeContainerTest
  include BikeContainer
end

#it_behaves_like imports all the tests in the shared example
describe BikeContainerTest do
  it_behaves_like BikeContainer
end


