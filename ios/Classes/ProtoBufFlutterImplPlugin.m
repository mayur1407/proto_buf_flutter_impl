#import "ProtoBufFlutterImplPlugin.h"
#if __has_include(<proto_buf_flutter_impl/proto_buf_flutter_impl-Swift.h>)
#import <proto_buf_flutter_impl/proto_buf_flutter_impl-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "proto_buf_flutter_impl-Swift.h"
#endif

@implementation ProtoBufFlutterImplPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftProtoBufFlutterImplPlugin registerWithRegistrar:registrar];
}
@end
