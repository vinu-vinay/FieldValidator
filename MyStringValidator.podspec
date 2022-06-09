
Pod::Spec.new do |spec|
  spec.name         = "MyStringValidator"
  spec.version      = "1.0.0"
  spec.summary      = "A short description of FieldValidator."
  spec.description  = "Validator"
  spec.homepage     = "https://github.com/vinu-vinay/FieldValidator"
  spec.license      = "MIT"
  spec.author             = { "Vinayan M" => "itsvinayan@gmail.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/vinu-vinay/FieldValidator.git", :tag => spec.version.to_s }
  spec.source_files  = "FieldValidator/**/*.{swift}"
  spec.swift_versions     = "5.0"

end
