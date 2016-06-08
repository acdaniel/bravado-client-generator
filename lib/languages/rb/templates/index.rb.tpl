require_relative "{{lower api.info.cleanTitle}}_rest/version"
require_relative "{{lower api.info.cleanTitle}}_rest/error"
require_relative "{{lower api.info.cleanTitle}}_rest/utils"
{{#each api.resources as |resource name|}}
require_relative "{{lower ../api.info.cleanTitle}}_rest/{{underscore name}}"
{{/each}}
require_relative "{{lower api.info.cleanTitle}}_rest/client"

module LosantRest

  def self.client
    @client ||= Client.new
  end

  def self.method_missing(sym, *args, &block)
    self.client.__send__(sym, *args, &block)
  end

  def respond_to_missing?(method_name, include_private = false)
    self.client.respond_to?(method_name, include_private)
  end

end