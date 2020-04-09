# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

require_relative 'node_error_int/version'

# NodeErrorInt.
# @abstract
# @class_description
#   A Node TypeError exception class interface.
# @attr message [String]
#   An error message.
class NodeErrorInt < DataStructureError

  # Constants.
  DEFAULT_MESSAGE = 'The argument is not a Node instance.'.freeze()

  # initialize(message = DEFAULT_MESSAGE).
  # @description
  #   Initializes a NodeError instance.
  # @param message [String]
  #   An error explanation.
  def initialize(message = DEFAULT_MESSAGE)
  end

  # message().
  # @description
  #   Gets the error message.
  # @return [String]
  #   The message.
  def message()
  end

  private

  # message=(explanation = nil).
  # @description
  #   Sets the message attribute the explanation argument.
  # @param explanation [String]
  #   A NodeError explanation.
  # @return [String]
  #   The argument.
  def message=(explanation = nil)
  end

end
