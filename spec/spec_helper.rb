RSpec.configure do |config|
  config.order = :default
  failure_color = :red
  success_color= :green
  pending_color = :yellow
  fixed_color = :blue
  detail_color = :cyan
  config.tty = true
  config.color = true
end

RSpec::Matchers.define :include_array do |expected|
  match do |actual|
    actual.any?{|array| match_array(expected).matches?(array)}
  end
end
