require 'test/unit'
require 'yaml'

RAILS_ROOT = '.'

require File.dirname(__FILE__) + '/../lib/messages'

class MessagesTest < Test::Unit::TestCase
  include Messages
  def test_should_do_text_substitution
    assert_equal "Please call Customer Service at 555-123-3434", 
      Messages.get("music/call_cs", "555-123-3434")
  end
end
