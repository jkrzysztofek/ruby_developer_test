# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'parser.rb'

class ParserCountTest < Minitest::Test
  def test_count_one_log
    parser = Parser.new.parse_logfile('test_logs/test_one.log')
    counts = {"/help_page/1"=>1}
    assert_equal counts, parser
  end

  def test_count_one_of_each_log
    parser = Parser.new.parse_logfile('test_logs/test_one_of_each.log')
    counts = {"/help_page/1"=>1, "/contact"=>1, "/home"=>1}
    assert_equal counts, parser
  end

  def test_multiple_occurrences
    parser = Parser.new.parse_logfile('test_logs/test_multiple_occurences.log')
    counts = {"/help_page/1"=>5, "/contact"=>3, "/home"=>2}
    assert_equal counts, parser
  end
end
