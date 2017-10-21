require 'open-uri'

class ProviderService
  attr_reader :needs

  def initialize(needs = [])
    @needs = needs.map(&:name)
  end

  def provider_list
    @provider_list = JSON.load(open("http://dinomic-env.iptbyyverm.us-east-1.elasticbeanstalk.com/getProviders"))
    if needs.empty?
      @provider_list['data']
    else
      @provider_list['data'].select do |d|
        (d['serviceProvided'] & @needs).any?
      end
    end
  end
end
