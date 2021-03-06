#
# Author:: Adam Jacob (<adam@opscode.com>)
# Copyright:: Copyright (c) 2008 Opscode, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

class Chef
  class Resource
    class Cat < Chef::Resource
      
      attr_accessor :action
      
      def initialize(name, collection=nil, node=nil)
        @resource_name = :cat
        super(name, collection, node)
        @action = "sell"
      end
      
      def pretty_kitty(arg=nil)
        set_if_args(@pretty_kitty, arg) do
          case arg
          when true, false
            @pretty_kitty = arg
          end
        end
      end
    end
  end
end
