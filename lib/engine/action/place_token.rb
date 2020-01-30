# frozen_string_literal: true

require 'engine/action/base'

module Engine
  module Action
    class PlaceToken < Base
      attr_reader :entity, :city, :slot

      def initialize(entity, city, slot)
        @entity = entity
        @city = city
        @slot = slot
      end

      def copy(game)
        self.class.new(
          game.corporation_by_name(@entity.name),
          @city,
          @slot
        )
      end
    end
  end
end
