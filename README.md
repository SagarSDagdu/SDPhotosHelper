# SDPhotosHelper
A light-weight helper class which helps add and retrieve images and videos to / from a custom album in Photos. It uses the PHPhotoLibrary provided by Apple and is written in Swift 3 with ❤️. It uses the Photos framework (https://developer.apple.com/documentation/photos) introduced by Apple from iOS 8.

## Installing the library

To use the library, just add the dependency to your `Podfile`:

```ruby
platform :ios
pod 'SDPhotosHelper'
```

Run `pod install` to install the dependencies.

## Note
- Make sure your app has the the permission to access Photos before using the methods in this class, as this class doesn't deal with permissions.
- Starting from iOS 10, it is compulsory to add <code>NSPhotoLibraryUsageDescription</code> to your Info.plist file.

## License
MIT License

Copyright (c) 2017 Sagar Dagdu

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
