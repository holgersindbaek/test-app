# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require "rubygems"
require 'bundler'
Bundler.require

# Require gems
require 'motion-installr'
require 'ruby_motion_query'
require 'bubble-wrap'

Motion::Project::App.setup do |app|
  # Basic information
  app.name                            = 'Slang'
  app.version                         = "1.0"
  app.short_version                   = "1.0"
  app.seed_id                         = "PQ6TN5RPA2"
  app.identifier                      = "com.holgersindbaek.slang"

  # Versions and orientations
  app.sdk_version                     = '8.1'
  app.deployment_target               = '7.1'
  app.interface_orientations          = [:portrait]

  # Dependencies
  app.detect_dependencies             = true

  # Codesigning
  app.codesign_certificate            = 'iOS Distribution: BetaUnltd LLC'
  app.provisioning_profile            = 'resources/misc/Slang_Ad_Hoc.mobileprovision'

  # Frameworks
  app.frameworks                      += ['QuartzCore', 'CoreGraphics']

  # Resources, fonts and icons
  app.resources_dirs                  = ['resources/images', 'resources/misc', 'resources/icons', 'resources/fonts', 'resources/assets']
  app.fonts                           = ['ITCAvantGardeStd-Bk.otf', 'ITCAvantGardeStd-BkObl.otf', 'ITCAvantGardeStd-Bold.otf', 'ITCAvantGardeStd-BoldObl.otf', 'ITCAvantGardeStd-Demi.otf', 'ITCAvantGardeStd-DemiObl.otf']
  app.icons                           = Dir.glob('resources/icons/Icon*.png').map{ |icon| icon.split('/').last }
  app.prerendered_icon                = true

  # Extra stuff
  app.info_plist['UIAppFonts']        = ['ITCAvantGardeStd-Bk.otf', 'ITCAvantGardeStd-BkObl.otf', 'ITCAvantGardeStd-Bold.otf', 'ITCAvantGardeStd-BoldObl.otf', 'ITCAvantGardeStd-Demi.otf', 'ITCAvantGardeStd-DemiObl.otf']
  app.info_plist['UILaunchImageFile'] = 'Default'
  app.info_plist['UIStatusBarHidden'] = true
  app.info_plist["UIViewControllerBasedStatusBarAppearance"] = false
  app.info_plist['UIStatusBarStyle'] =  "UIStatusBarStyleLightContent"

  # Cocoapods
  # app.pods do
  #   pod 'Harpy',            '~> 2.5.2'
  # end

  # # app.vendor_project 'vendor/lumberjack_patch', :static

  # Release settings
  app.release do
    app.codesign_certificate = 'iOS Distribution: BetaUnltd LLC'
  end

  # Setup installr
  app.installrapp do
    app.codesign_certificate = 'iOS Distribution: BetaUnltd LLC'
    app.entitlements['get-task-allow'] = false
    app.installr_api_token = 'mlizw70qt9KRuVqlmr9Ji4YDGiCEaLvZ'
  end
end
