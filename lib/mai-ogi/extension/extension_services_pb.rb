# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: extension.proto for package 'sensu.rpc'

require 'grpc'
require_relative 'extension_pb'

module Sensu
  module Rpc
    module Extension
      # Extension services can be implemented by third parties. They receive
      # HandleEvent requests and return Handlers. Sensu will dispatch the Handler
      # that is returned.
      #
      # Extensions must be registered before they can be used. See the sensuctl
      # documentation for more information about how extensions are registered.
      class Service

        include GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'sensu.rpc.Extension'

        rpc :HandleEvent, HandleEventRequest, HandleEventResponse
        rpc :MutateEvent, MutateEventRequest, MutateEventResponse
        rpc :FilterEvent, FilterEventRequest, FilterEventResponse
      end

      Stub = Service.rpc_stub_class
    end
  end
end
