module Fog
  module Parsers
    module Bluebox
      module DNS

        class CreateZone < Fog::Parsers::Base

          def reset
            @response = {}
          end

          def end_element(name)
            case name
            when 'serial', 'ttl', 'retry', 'refresh', 'minimum', 'record-count', 'expires'
              @response[name] = @value.to_i
            when 'name', 'id'
              @response[name] = @value
            end
          end

        end

      end
    end
  end
end
