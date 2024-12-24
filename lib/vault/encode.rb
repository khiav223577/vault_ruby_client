# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

module Vault
  module EncodePath

    # Encodes a string according to the rules for URL paths. This is
    # used as opposed to CGI.escape because in a URL path, space
    # needs to be escaped as %20 and CGI.escapes a space as +.
    #
    # take the implementation of ERB::Util.url_encode and modified it to exclude slash.
    # source: https://apidock.com/ruby/v2_6_3/ERB/Util/url_encode
    #
    # @param [String]
    #
    # @return [String]
    def encode_path(path)
      path.to_s.b.gsub(/[^a-zA-Z0-9_\-.~\/]/) do |m|
        sprintf("%%%02X", m.unpack1("C"))
      end
    end

    module_function :encode_path
  end
end
