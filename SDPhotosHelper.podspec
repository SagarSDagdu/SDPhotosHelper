Pod::Spec.new do |s|
s.name             = 'SDPhotosHelper'
s.version          = '1.0.0'
s.summary          = 'A simple helper class for adding images and videos to Custom Albums using PHPhotos framework'

s.description      = <<-DESC
SDPhotos helper uses the APIs provided by PHPhotos framework introduced by Apple. It eases out the process of adding media to Custom Album in Photos.
DESC

s.homepage         = 'https://github.com/SagarSDagdu/SDPhotosHelper'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Sagar Dagdu' => 'shags032@gmail.com' }
s.source           = { :git => 'https://github.com/SagarSDagdu/SDPhotosHelper.git', :tag => s.version.to_s }

s.ios.deployment_target = '9.0'
s.source_files = 'SDPhotosHelper/Classes/*.swift'

end
