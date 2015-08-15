require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

  test "unique" do
    quote = FactoryGirl.create(:quote, :author => 'Anna Gaiel')
  	#puts quote.inspect
  	expected = 'AG#' + quote.id.to_s
  	actual = quote.unique_tag
  	assert_equal expected, actual

  end

end
