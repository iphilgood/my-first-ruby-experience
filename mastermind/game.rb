require 'secret'
require 'matcher'

class Game
  def initialize
    @secret = Secret.new
    @current_matcher = nil
    @matchers = []
  end
  
  def run
    puts @secret.inspect  
  end
  
  def next_entering(guess)
    @current_matcher = Matcher.new(guess)
    @matchers << @current_matcher
  end
  
  def match?
    @current_matcher.match?(@secret)
  end
  
  def number_of_matchers
    puts @matchers.size
  end
end