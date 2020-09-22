require 'cocoapods-dependency-graph/command'
require_relative 'cocoapods-dependency-graph'

module Dependency
    Pod::HooksManager.register('cocoapods-dependency-graph', :post_install) do |installer_context|
        puts "installer========"
        Graph.new.generate()
    end
end