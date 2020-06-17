require 'glimmer/dsl/static_expression'
require 'glimmer/dsl/top_level_expression'
require 'glimmer/dsl/parent_expression'
require 'glimmer/opal/document_proxy'

module Glimmer
  module DSL
    module Opal
      class ShellExpression < StaticExpression
        include TopLevelExpression
        include ParentExpression

        def interpret(parent, keyword, *args, &block)
          Glimmer::Opal::DocumentProxy.new(args)
        end
      end
    end
  end
end
