module Resque
  module Failure
    class Base
      attr_accessor :exception, :worker, :queue, :payload

      def initialize(exception, worker, queue, payload)
        @exception = exception
        @worker    = worker
        @queue     = queue
        @payload   = payload
      end

      def save
        # implement me in your subclass
      end

      def log(message)
        @worker.log(message)
      end
    end
  end
end