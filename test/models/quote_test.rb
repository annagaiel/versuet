require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

  test "unique" do
  	quote = Quote.create(:author => 'Anna Gaiel', :saying => 'Think possibilities')
  	#puts quote.inspect
  	expected = 'AG#' + quote.id.to_s
  	actual = quote.unique_tag
  	assert_equal expected, actual

  end

end
