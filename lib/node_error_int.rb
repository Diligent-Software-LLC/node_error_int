# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the MIT License.

require 'node_error_int/version'

# NodeErrorInt.
# @abstract
# A NodeError interface.
class NodeErrorInt < DataStructureError

  DEFAULT_MESSAGE = 'The argument is not a Node instance.'.freeze()

  # initialize(message = DEFAULT_MESSAGE).
  # @abstract
  # Constructor. Returns a NodeError instance.
  # @param [String] message
  # An error explanation.
  def initialize(message = DEFAULT_MESSAGE)
  end

  # message().
  # @abstract
  # Getter.
  # @return [String] m_copy
  # The message attribute's copy.
  def message()
  end

  # node?(any_object = nil).
  # @abstract
  # Boolean method. In the case the argument object is a Node instance,
  # returns true. Otherwise, returns false.
  # @return [TrueClass, FalseClass] node_bool
  # True in the case any_object is a Node instance. False otherwise.
  def node?(any_object = nil)
  end

  private

  # message=(explanation = nil).
  # @abstract
  # Setter. Sets the message attribute.
  # @param [String] explanation
  # A NodeError explanation.
  def message=(explanation = nil)
  end

end
