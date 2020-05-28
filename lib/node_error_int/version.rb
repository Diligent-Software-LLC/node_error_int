# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

require "data_structure_error_int"

# NodeErrorInt.
# @abstract
# @class_description
#   A NodeError library's interface.
# @attr message [String]
#   An error message.
class NodeErrorInt < DataStructureErrorInt
  VERSION = '2.0.0'.freeze()
end
