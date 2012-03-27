module YARD
  module Handlers
    module Ruby
      class Base < Handlers::Base
        def call_params
          return [] unless statement.respond_to?(:parameters)
          statement.parameters(false).map do |param|
            if param.type == :regexp_literal
              param.jump(:ident, :tstring_content).source.tr('\^\$', '')
            else
              param.jump(:ident, :tstring_content).source
            end
          end
        end
      end
    end
  end
end

