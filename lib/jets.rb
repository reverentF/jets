$:.unshift(File.expand_path("../", __FILE__))
require "jets/version"
require 'active_support/core_ext/string'

module Jets
  autoload :Util, "jets/util"
  autoload :Command, "jets/command"
  autoload :CLI, "jets/cli"
  autoload :Build, 'jets/build'
  autoload :Process, 'jets/process'
  autoload :BaseController, 'jets/base_controller'

  extend Util
end