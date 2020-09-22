require 'cocoapods-dependency-graph/gem_version'
require 'cocoapods'
require 'fileutils'
module Dependency
    class Graph
         def generate
            Pod::UI.puts "graph generated"
        end
    end
end