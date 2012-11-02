module GithubRepo
  PROTOCOL = "https"
  GITHUB   = "github.com"
  OWNER    = "psyburn"
  NAME     = "codeatsix"

  extend self

  def url
    URI::parse("#{PROTOCOL}://#{GITHUB}/#{OWNER}/#{NAME}")
  end

  def git
    "git@github.com:#{OWNER}/#{NAME}.git"
  end

  def to_s
    "#{url}"
  end
end
