require 'cocoapods-dependency-graph/command'
require_relative 'cocoapods_dependency_graph'

module Dependency
  # Register the post_install hook. The context is passed when running block 
  Pod::HooksManager.register('cocoapods-dependency-graph', :post_install) do |installer_context|
    Graph.new.generate(installer_context.umbrella_targets)
  end
end