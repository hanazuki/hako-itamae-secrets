require 'hako/env_provider'
require 'itamae/secrets'

module Hako
  module EnvProviders
    class ItamaeSecrets < EnvProvider
      def initialize(root_path, options)
        base_dir = ::File.expand_path(options.fetch('base_dir'), root_path)
        @store = Itamae::Secrets::Store.new(base_dir)
      end

      def ask(variables)
        variables.each_with_object({}) do |key, env|
          begin
            env[key] = @store.fetch(key)
          rescue KeyError
            # noop
          end
        end
      end

      def can_ask_keys?
        true
      end

      def ask_keys(variables)
        variables.select do |key|
          begin
            @store.fetch(key)
            true
          rescue KeyError
            false
          end
        end
      end
    end
  end
end
