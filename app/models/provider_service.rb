class ProviderService
  attr_reader :needs

  def initialize(needs)
    @needs = needs.map{|n| n.name}
  end

  def provider_list
    @provider_list = JSON.parse(File.read('../data'))
    @provider_list['data'].select do |d|
      (d['serviceProvided'] & @needs).any?
    end
  end
end
