# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'

require "motion-cocoapods"

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'restkit_mapping'

  # cocapods does not like RESTKIT
  app.frameworks += %w(CoreData CFNetwork Security MobileCoreServices SystemConfiguration QuartzCore)
  app.vendor_project('vendor/RestKit', :xcode, target: 'RestKit')
end
