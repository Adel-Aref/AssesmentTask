//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap { Locale(identifier: $0) } ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)

  /// Find first language and bundle for which the table exists
  fileprivate static func localeBundle(tableName: String, preferredLanguages: [String]) -> (Foundation.Locale, Foundation.Bundle)? {
    // Filter preferredLanguages to localizations, use first locale
    var languages = preferredLanguages
      .map { Locale(identifier: $0) }
      .prefix(1)
      .flatMap { locale -> [String] in
        if hostingBundle.localizations.contains(locale.identifier) {
          if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
            return [locale.identifier, language]
          } else {
            return [locale.identifier]
          }
        } else if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
          return [language]
        } else {
          return []
        }
      }

    // If there's no languages, use development language as backstop
    if languages.isEmpty {
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages = [developmentLocalization]
      }
    } else {
      // Insert Base as second item (between locale identifier and languageCode)
      languages.insert("Base", at: 1)

      // Add development language as backstop
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages.append(developmentLocalization)
      }
    }

    // Find first language for which table exists
    // Note: key might not exist in chosen language (in that case, key will be shown)
    for language in languages {
      if let lproj = hostingBundle.url(forResource: language, withExtension: "lproj"),
         let lbundle = Bundle(url: lproj)
      {
        let strings = lbundle.url(forResource: tableName, withExtension: "strings")
        let stringsdict = lbundle.url(forResource: tableName, withExtension: "stringsdict")

        if strings != nil || stringsdict != nil {
          return (Locale(identifier: language), lbundle)
        }
      }
    }

    // If table is available in main bundle, don't look for localized resources
    let strings = hostingBundle.url(forResource: tableName, withExtension: "strings", subdirectory: nil, localization: nil)
    let stringsdict = hostingBundle.url(forResource: tableName, withExtension: "stringsdict", subdirectory: nil, localization: nil)

    if strings != nil || stringsdict != nil {
      return (applicationLocale, hostingBundle)
    }

    // If table is not found for requested languages, key will be shown
    return nil
  }

  /// Load string from Info.plist file
  fileprivate static func infoPlistString(path: [String], key: String) -> String? {
    var dict = hostingBundle.infoDictionary
    for step in path {
      guard let obj = dict?[step] as? [String: Any] else { return nil }
      dict = obj
    }
    return dict?[key] as? String
  }

  static func validate() throws {
    try intern.validate()
  }

  #if os(iOS) || os(tvOS)
  /// This `R.storyboard` struct is generated, and contains static references to 2 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    #endif

    fileprivate init() {}
  }
  #endif

  /// This `R.color` struct is generated, and contains static references to 15 colors.
  struct color {
    /// Color `AccentColor`.
    static let accentColor = Rswift.ColorResource(bundle: R.hostingBundle, name: "AccentColor")
    /// Color `black - Two`.
    static let blackTwo = Rswift.ColorResource(bundle: R.hostingBundle, name: "black - Two")
    /// Color `black`.
    static let black = Rswift.ColorResource(bundle: R.hostingBundle, name: "black")
    /// Color `borderColor`.
    static let borderColor = Rswift.ColorResource(bundle: R.hostingBundle, name: "borderColor")
    /// Color `greyishBrown`.
    static let greyishBrown = Rswift.ColorResource(bundle: R.hostingBundle, name: "greyishBrown")
    /// Color `greyish`.
    static let greyish = Rswift.ColorResource(bundle: R.hostingBundle, name: "greyish")
    /// Color `primaryColor`.
    static let primaryColor = Rswift.ColorResource(bundle: R.hostingBundle, name: "primaryColor")
    /// Color `secondaryColor`.
    static let secondaryColor = Rswift.ColorResource(bundle: R.hostingBundle, name: "secondaryColor")
    /// Color `slate`.
    static let slate = Rswift.ColorResource(bundle: R.hostingBundle, name: "slate")
    /// Color `warmGrey - Two`.
    static let warmGreyTwo = Rswift.ColorResource(bundle: R.hostingBundle, name: "warmGrey - Two")
    /// Color `warmGrey`.
    static let warmGrey = Rswift.ColorResource(bundle: R.hostingBundle, name: "warmGrey")
    /// Color `white - Four`.
    static let whiteFour = Rswift.ColorResource(bundle: R.hostingBundle, name: "white - Four")
    /// Color `white - Three`.
    static let whiteThree = Rswift.ColorResource(bundle: R.hostingBundle, name: "white - Three")
    /// Color `white - Two`.
    static let whiteTwo = Rswift.ColorResource(bundle: R.hostingBundle, name: "white - Two")
    /// Color `white`.
    static let white = Rswift.ColorResource(bundle: R.hostingBundle, name: "white")

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "AccentColor", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func accentColor(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.accentColor, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "black - Two", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func blackTwo(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.blackTwo, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "black", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func black(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.black, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "borderColor", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func borderColor(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.borderColor, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "greyish", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func greyish(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.greyish, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "greyishBrown", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func greyishBrown(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.greyishBrown, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "primaryColor", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func primaryColor(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.primaryColor, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "secondaryColor", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func secondaryColor(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.secondaryColor, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "slate", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func slate(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.slate, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "warmGrey - Two", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func warmGreyTwo(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.warmGreyTwo, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "warmGrey", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func warmGrey(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.warmGrey, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "white - Four", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func whiteFour(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.whiteFour, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "white - Three", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func whiteThree(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.whiteThree, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "white - Two", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func whiteTwo(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.whiteTwo, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "white", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func white(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.white, compatibleWith: traitCollection)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "AccentColor", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func accentColor(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.accentColor.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "black - Two", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func blackTwo(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.blackTwo.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "black", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func black(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.black.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "borderColor", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func borderColor(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.borderColor.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "greyish", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func greyish(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.greyish.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "greyishBrown", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func greyishBrown(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.greyishBrown.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "primaryColor", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func primaryColor(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.primaryColor.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "secondaryColor", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func secondaryColor(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.secondaryColor.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "slate", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func slate(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.slate.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "warmGrey - Two", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func warmGreyTwo(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.warmGreyTwo.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "warmGrey", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func warmGrey(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.warmGrey.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "white - Four", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func whiteFour(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.whiteFour.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "white - Three", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func whiteThree(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.whiteThree.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "white - Two", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func whiteTwo(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.whiteTwo.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "white", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func white(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.white.name)
    }
    #endif

    fileprivate init() {}
  }

  /// This `R.file` struct is generated, and contains static references to 2 files.
  struct file {
    /// Resource file `.swiftlint.yml`.
    static let swiftlintYml = Rswift.FileResource(bundle: R.hostingBundle, name: ".swiftlint", pathExtension: "yml")
    /// Resource file `Developement.xcconfig`.
    static let developementXcconfig = Rswift.FileResource(bundle: R.hostingBundle, name: "Developement", pathExtension: "xcconfig")

    /// `bundle.url(forResource: ".swiftlint", withExtension: "yml")`
    static func swiftlintYml(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.swiftlintYml
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "Developement", withExtension: "xcconfig")`
    static func developementXcconfig(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.developementXcconfig
      return fileResource.bundle.url(forResource: fileResource)
    }

    fileprivate init() {}
  }

  /// This `R.image` struct is generated, and contains static references to 3 images.
  struct image {
    /// Image `back`.
    static let back = Rswift.ImageResource(bundle: R.hostingBundle, name: "back")
    /// Image `fawryPlacholder`.
    static let fawryPlacholder = Rswift.ImageResource(bundle: R.hostingBundle, name: "fawryPlacholder")
    /// Image `fawry`.
    static let fawry = Rswift.ImageResource(bundle: R.hostingBundle, name: "fawry")

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "back", bundle: ..., traitCollection: ...)`
    static func back(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.back, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "fawry", bundle: ..., traitCollection: ...)`
    static func fawry(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.fawry, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "fawryPlacholder", bundle: ..., traitCollection: ...)`
    static func fawryPlacholder(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.fawryPlacholder, compatibleWith: traitCollection)
    }
    #endif

    fileprivate init() {}
  }

  /// This `R.info` struct is generated, and contains static references to 1 properties.
  struct info {
    struct uiApplicationSceneManifest {
      static let _key = "UIApplicationSceneManifest"
      static let uiApplicationSupportsMultipleScenes = false

      fileprivate init() {}
    }

    fileprivate init() {}
  }

  /// This `R.nib` struct is generated, and contains static references to 6 nibs.
  struct nib {
    /// Nib `AutherViewController`.
    static let autherViewController = _R.nib._AutherViewController()
    /// Nib `HomeCollectionCell`.
    static let homeCollectionCell = _R.nib._HomeCollectionCell()
    /// Nib `LoadingView`.
    static let loadingView = _R.nib._LoadingView()
    /// Nib `LoginViewController`.
    static let loginViewController = _R.nib._LoginViewController()
    /// Nib `OnboardingViewController`.
    static let onboardingViewController = _R.nib._OnboardingViewController()
    /// Nib `SignUpViewController`.
    static let signUpViewController = _R.nib._SignUpViewController()

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "AutherViewController", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.autherViewController) instead")
    static func autherViewController(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.autherViewController)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "HomeCollectionCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.homeCollectionCell) instead")
    static func homeCollectionCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.homeCollectionCell)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "LoadingView", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.loadingView) instead")
    static func loadingView(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.loadingView)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "LoginViewController", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.loginViewController) instead")
    static func loginViewController(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.loginViewController)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "OnboardingViewController", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.onboardingViewController) instead")
    static func onboardingViewController(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.onboardingViewController)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "SignUpViewController", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.signUpViewController) instead")
    static func signUpViewController(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.signUpViewController)
    }
    #endif

    static func autherViewController(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> AutherViewController? {
      return R.nib.autherViewController.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? AutherViewController
    }

    static func homeCollectionCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> HomeCollectionCell? {
      return R.nib.homeCollectionCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? HomeCollectionCell
    }

    static func loadingView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.loadingView.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }

    static func loginViewController(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> LoginViewController? {
      return R.nib.loginViewController.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? LoginViewController
    }

    static func onboardingViewController(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> OnboardingViewController? {
      return R.nib.onboardingViewController.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? OnboardingViewController
    }

    static func signUpViewController(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> SignUpViewController? {
      return R.nib.signUpViewController.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? SignUpViewController
    }

    fileprivate init() {}
  }

  /// This `R.reuseIdentifier` struct is generated, and contains static references to 1 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `HomeCollectionCell`.
    static let homeCollectionCell: Rswift.ReuseIdentifier<HomeCollectionCell> = Rswift.ReuseIdentifier(identifier: "HomeCollectionCell")

    fileprivate init() {}
  }

  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }

    fileprivate init() {}
  }

  fileprivate class Class {}

  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    #if os(iOS) || os(tvOS)
    try nib.validate()
    #endif
    #if os(iOS) || os(tvOS)
    try storyboard.validate()
    #endif
  }

  #if os(iOS) || os(tvOS)
  struct nib: Rswift.Validatable {
    static func validate() throws {
      try _AutherViewController.validate()
      try _HomeCollectionCell.validate()
      try _LoginViewController.validate()
      try _OnboardingViewController.validate()
      try _SignUpViewController.validate()
    }

    struct _AutherViewController: Rswift.NibResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "AutherViewController"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> AutherViewController? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? AutherViewController
      }

      static func validate() throws {
        if UIKit.UIImage(named: "back", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'back' is used in nib 'AutherViewController', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }

    struct _HomeCollectionCell: Rswift.NibResourceType, Rswift.ReuseIdentifierType, Rswift.Validatable {
      typealias ReusableType = HomeCollectionCell

      let bundle = R.hostingBundle
      let identifier = "HomeCollectionCell"
      let name = "HomeCollectionCell"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> HomeCollectionCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? HomeCollectionCell
      }

      static func validate() throws {
        if UIKit.UIImage(named: "fawryPlacholder", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'fawryPlacholder' is used in nib 'HomeCollectionCell', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
          if UIKit.UIColor(named: "backgroundColor", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'backgroundColor' is used in nib 'HomeCollectionCell', but couldn't be loaded.") }
        }
      }

      fileprivate init() {}
    }

    struct _LoadingView: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "LoadingView"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }

      fileprivate init() {}
    }

    struct _LoginViewController: Rswift.NibResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "LoginViewController"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> LoginViewController? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? LoginViewController
      }

      static func validate() throws {
        if UIKit.UIImage(named: "back", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'back' is used in nib 'LoginViewController', but couldn't be loaded.") }
        if UIKit.UIImage(named: "fawry", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'fawry' is used in nib 'LoginViewController', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
          if UIKit.UIColor(named: "Border", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'Border' is used in nib 'LoginViewController', but couldn't be loaded.") }
          if UIKit.UIColor(named: "Seperator", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'Seperator' is used in nib 'LoginViewController', but couldn't be loaded.") }
          if UIKit.UIColor(named: "black", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'black' is used in nib 'LoginViewController', but couldn't be loaded.") }
          if UIKit.UIColor(named: "primaryColor", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'primaryColor' is used in nib 'LoginViewController', but couldn't be loaded.") }
          if UIKit.UIColor(named: "slate - 10", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'slate - 10' is used in nib 'LoginViewController', but couldn't be loaded.") }
          if UIKit.UIColor(named: "white - Two", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'white - Two' is used in nib 'LoginViewController', but couldn't be loaded.") }
        }
      }

      fileprivate init() {}
    }

    struct _OnboardingViewController: Rswift.NibResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "OnboardingViewController"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> OnboardingViewController? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? OnboardingViewController
      }

      static func validate() throws {
        if UIKit.UIImage(named: "fawry", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'fawry' is used in nib 'OnboardingViewController', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
          if UIKit.UIColor(named: "primaryColor", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'primaryColor' is used in nib 'OnboardingViewController', but couldn't be loaded.") }
          if UIKit.UIColor(named: "secondaryColor", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'secondaryColor' is used in nib 'OnboardingViewController', but couldn't be loaded.") }
          if UIKit.UIColor(named: "white - Two", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'white - Two' is used in nib 'OnboardingViewController', but couldn't be loaded.") }
        }
      }

      fileprivate init() {}
    }

    struct _SignUpViewController: Rswift.NibResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "SignUpViewController"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> SignUpViewController? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? SignUpViewController
      }

      static func validate() throws {
        if UIKit.UIImage(named: "back", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'back' is used in nib 'SignUpViewController', but couldn't be loaded.") }
        if UIKit.UIImage(named: "fawry", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'fawry' is used in nib 'SignUpViewController', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
          if UIKit.UIColor(named: "black", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'black' is used in nib 'SignUpViewController', but couldn't be loaded.") }
          if UIKit.UIColor(named: "primaryColor", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'primaryColor' is used in nib 'SignUpViewController', but couldn't be loaded.") }
          if UIKit.UIColor(named: "white - Two", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'white - Two' is used in nib 'SignUpViewController', but couldn't be loaded.") }
        }
      }

      fileprivate init() {}
    }

    fileprivate init() {}
  }
  #endif

  #if os(iOS) || os(tvOS)
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      #if os(iOS) || os(tvOS)
      try launchScreen.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try main.validate()
      #endif
    }

    #if os(iOS) || os(tvOS)
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController

      let bundle = R.hostingBundle
      let name = "LaunchScreen"

      static func validate() throws {
        if UIKit.UIImage(named: "fawry", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'fawry' is used in storyboard 'LaunchScreen', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct main: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = HomeViewController

      let bundle = R.hostingBundle
      let homeViewController = StoryboardViewControllerResource<HomeViewController>(identifier: "HomeViewController")
      let name = "Main"

      func homeViewController(_: Void = ()) -> HomeViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: homeViewController)
      }

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
          if UIKit.UIColor(named: "secondaryColor", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'secondaryColor' is used in storyboard 'Main', but couldn't be loaded.") }
        }
        if _R.storyboard.main().homeViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'homeViewController' could not be loaded from storyboard 'Main' as 'HomeViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    fileprivate init() {}
  }
  #endif

  fileprivate init() {}
}
