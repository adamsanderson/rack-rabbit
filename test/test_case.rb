require 'minitest/autorun'

module RackRabbit
  class TestCase < Minitest::Unit::TestCase

    #--------------------------------------------------------------------------

    EMPTY_CONFIG     = File.expand_path("examples/empty.conf",  File.dirname(__FILE__))
    SIMPLE_CONFIG    = File.expand_path("examples/simple.conf", File.dirname(__FILE__))

    DEFAULT_RACK_APP = File.expand_path("examples/config.ru",   File.dirname(__FILE__))
    SIMPLE_RACK_APP  = File.expand_path("examples/simple.ru",   File.dirname(__FILE__))
    EXAMINE_RACK_APP = File.expand_path("examples/examine.ru",  File.dirname(__FILE__))

    #--------------------------------------------------------------------------

    def assert_raises_argument_error(message = nil, &block)
      e = assert_raises(ArgumentError, &block)
      assert_match(/#{message}/, e.message) unless message.nil?
    end

    #--------------------------------------------------------------------------

  end
end
