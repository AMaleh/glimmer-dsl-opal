# Copyright (c) 2020-2021 Andy Maleh
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

require 'net/http'

# declared behavior in this module to enable rspec testing (later gets mixed to File)
module FileExt
  REGEXP_DIR_FILE = /\(dir\)|\(file\)|\.\.|\./
  
  attr_accessor :image_paths
  
  def read(*args, &block)
    # TODO implement via asset downloads in the future
    # No Op in Opal
  end
  
  # Include special processing for images that matches them against a list of available image paths from the server
  # to convert to web paths.
  def expand_path(path, base=nil)
    if base
      path = expand_path_without_glimmer(path, base)
    end
    convert_path(path)
  end
  
  def join(*paths)
    path = join_without_glimmer(*paths)
    expand_path(path, '(dir)')
  end
  
  def convert_path(path)
    get_image_paths unless image_paths
    if !path_include_dir_or_file(path)
      path
    else
      essential_path = path.split('(dir)').last.split('(file)').last.split('..').last.split('.').last
      if path_segments(essential_path).empty?
        ''
      else
        result = image_paths.to_a.detect do |image_path|
          image_path.include?(essential_path)
        end
        if result.nil?
          ''
        else
          result
        end
      end
    end
  end
  
  def path_include_dir_or_file(path)
    !!path.match(REGEXP_DIR_FILE)
  end
  
  def path_segments(path)
    path.split('/').delete_if {|str| str == '..' || str == '.' || str == ''}
  end
  
  def get_image_paths
    image_paths_json = Net::HTTP.get(`window.location.origin`, '/glimmer/image_paths.json')
    self.image_paths = JSON.parse(image_paths_json)
  end
  
end
