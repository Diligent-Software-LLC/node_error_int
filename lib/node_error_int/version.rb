# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

require "data_structure_error"

# NodeErrorInt.
# @abstract
# @class_description
#   A Node TypeError exception class interface.
# @attr message [String]
#   An error message.
class NodeErrorInt < DataStructureError
  VERSION = '1.0.0'.freeze()
end
