Pod::Spec.new do |spec|

  spec.name         = "HalfModalViewController"
  spec.version      = "1.1.0"
  spec.summary      = "A customizable half modal view controller for Swift"
  spec.description  = <<-DESC
                    A customizable half modal view controller that you can add buttons, labels, or tables to enhance the user experience and look of your app.
                   DESC
  spec.module_name = "HalfModalViewController"
  spec.homepage     = "https://github.com/lamnguynn/HalfModalViewController"
  spec.license      = "MIT"
  
  spec.author             = { "lamnguynn" => "lance66nguyen@gmail.com" }
  spec.ios.deployment_target = "14.5"
  spec.swift_version = "5"

  spec.source       = { :git => "https://github.com/lamnguynn/HalfModalViewController.git", :tag => spec.version }

  spec.source_files  = "HalfModalViewController"
end
