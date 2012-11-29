class ApiVersion

  def initialize(version)
    @version = version
  end

  def matches?(request)
    accept_header_matches_version?(request) or version_one?(request)
  end

  private

  def accept_header_matches_version?(request)
    request.headers['Accept'][%r{application/vnd.travnoty-v#{@version}\+json}]
  end

  def no_version?(request)
    request.headers['Accept'][%r{application/vnd.travnoty\+json}]
  end

  def version_one?(request)
    @version == 1 and no_version?(request)
  end

  class << self

    def [](version)
      ApiVersion.new(version)
    end

  end
end
