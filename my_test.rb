require 'test/unit'
require_relative 'main'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup

  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # Fake test
  def test_fail

    fail('Not implemented')
  end

  def test_wordsearch
    wordlist = File.readlines('words.txt').map { |line| line.strip }
    words = %w[donations beverages placement performed metallica thousands]
    assert_equal ["a", "at", "do", "nation", "on", "age", "be", "era", "ever", "me", "place", "for", "form", "or", "per", "perform", "all", "metal", "tall", "and", "sand", "thousand", "us", "art", "to", "in", "as", "pet", "rid", "arm"], searchwords(words, wordlist)
  end
end