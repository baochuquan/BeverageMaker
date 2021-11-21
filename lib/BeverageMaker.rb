require "BeverageMaker/version"

module BeverageMaker
  class Error < StandardError; end
  # Your code goes here...
  autoload :Command, 'BeverageMaker/command'
end
