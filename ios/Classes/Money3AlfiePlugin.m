#import "Money3AlfiePlugin.h"
#if __has_include(<money3_alfie_plugin/money3_alfie_plugin-Swift.h>)
#import <money3_alfie_plugin/money3_alfie_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "money3_alfie_plugin-Swift.h"
#endif

@implementation Money3AlfiePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMoney3AlfiePlugin registerWithRegistrar:registrar];
}
@end
