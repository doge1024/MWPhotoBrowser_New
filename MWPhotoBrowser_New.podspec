Pod::Spec.new do |s|

  s.name = 'MWPhotoBrowser_New'
  s.version = '2.2.0'
  s.license = 'MIT'
  s.summary = 'update MWPhotoBrowser'
  s.description = <<-DESCRIPTION
                  MWPhotoBrowser can display one or more images or videos by providing either UIImage
                  objects, PHAsset objects, or URLs to library assets, web images/videos or local files.
                  The photo browser handles the downloading and caching of photos from the web seamlessly.
                  Photos can be zoomed and panned, and optional (customisable) captions can be displayed.
                  DESCRIPTION
  s.screenshots = [
    'https://raw.github.com/mwaterfall/MWPhotoBrowser/master/Screenshots/MWPhotoBrowser1.png',
    'https://raw.github.com/mwaterfall/MWPhotoBrowser/master/Screenshots/MWPhotoBrowser2.png',
    'https://raw.github.com/mwaterfall/MWPhotoBrowser/master/Screenshots/MWPhotoBrowser3.png',
    'https://raw.github.com/mwaterfall/MWPhotoBrowser/master/Screenshots/MWPhotoBrowser4.png',
    'https://raw.github.com/mwaterfall/MWPhotoBrowser/master/Screenshots/MWPhotoBrowser5.png',
    'https://raw.github.com/mwaterfall/MWPhotoBrowser/master/Screenshots/MWPhotoBrowser6.png'
  ]

  s.homepage = 'https://github.com/mwaterfall/MWPhotoBrowser'
  s.author           = { 'harddog' => '867129306@qq.com' }
  s.social_media_url = 'https://twitter.com/mwaterfall'

  s.source           = { :git => 'https://github.com/harddog/MWPhotoBrowser_New.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.source_files = 'Pod/Classes/*', 'Pod/Classes/**/*'
  s.public_header_files = 'Pod/Classes/*.h', 'Pod/Classes/**/*.h'
  s.resource_bundles = {
    'MWPhotoBrowser_New' => ['Pod/Assets/*.png']
  }
  s.requires_arc = true
  s.static_framework = true
  s.xcconfig  = { "OTHER_LDFLAGS" => "$(inherited) -ObjC"}

  s.frameworks = 'ImageIO', 'QuartzCore', 'AssetsLibrary', 'MediaPlayer'
  s.weak_frameworks = 'Photos'

  s.dependency 'MBProgressHUD'
  s.dependency 'DACircularProgress', '~> 2.3'

  # SDWebImage
  s.dependency 'SDWebImage', '>4.0.0'

end
