Pod::Spec.new do |s|
  s.name             = "WYWNet1"
  s.version          = "0.1.0"
  s.summary          = "A short description of WYWNet1."
  s.description      = <<-DESC
                       An optional longer description of WYWNet1

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/wyw1984/WYWNet1"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "qq2126724184" => "2126724184@qq.com" }
  s.source           = { :git => "https://github.com/wyw1984/WYWNet1.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'WYWNet1/Classes/**/*.{h,m}'
  s.resource_bundles = {
    'WYWNet1' => ['WYWNet1/Assets/*.png']
  }

  s.public_header_files = 'WYWNet1/Classes/**/*.h'
  s.dependency 'AFNetworking'
end