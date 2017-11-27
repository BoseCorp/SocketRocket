//
// Copyright (c) 2016-present, Facebook, Inc.
// All rights reserved.
//
// This source code is licensed under the BSD-style license found in the
// LICENSE file in the root directory of this source tree. An additional grant
// of patent rights can be found in the PATENTS file in the same directory.
//

#import "SRStreamConfiguration.h"

#import <Foundation/Foundation.h>

#import "SRLog.h"

NS_ASSUME_NONNULL_BEGIN

@interface SRStreamConfiguration ()

@property (nonatomic, copy, readonly) NSDictionary *inputStreamConfiguration;
@property (nonatomic, copy, readonly) NSDictionary *outputStreamConfiguration;


@end

@implementation SRStreamConfiguration

- (instancetype)initWithInputStreamConfiguration:(NSDictionary *) inputStreamConfiguration OutputStreamConfiguration: (NSDictionary *) outputStreamConfiguration
{
    if (!self) { return self; }
    
    if ((inputStreamConfiguration.count + outputStreamConfiguration.count) == 0) {
        @throw [NSException exceptionWithName:@"Creating StreamConfiguration failed."
                                       reason:@"Must specify at least one StreamConfiguration."
                                     userInfo:nil];
    }
    _inputStreamConfiguration = [inputStreamConfiguration copy];
    _outputStreamConfiguration = [outputStreamConfiguration copy];

    return self;
}

- (void)applyStreamConfigurationToInputStream:(NSStream *)inputStream OutputStream:(NSStream *)outputStream
{
//    SRDebugLog(@"Pinned cert count: %d", self.pinnedCertificates.count);
//    NSUInteger requiredCertCount = self.pinnedCertificates.count;
//
//    NSUInteger validatedCertCount = 0;
//    CFIndex serverCertCount = SecTrustGetCertificateCount(serverTrust);
//    for (CFIndex i = 0; i < serverCertCount; i++) {
//        SecCertificateRef cert = SecTrustGetCertificateAtIndex(serverTrust, i);
//        NSData *data = CFBridgingRelease(SecCertificateCopyData(cert));
//        for (id ref in self.pinnedCertificates) {
//            SecCertificateRef trustedCert = (__bridge SecCertificateRef)ref;
//            // TODO: (nlutsenko) Add caching, so we don't copy the data for every pinned cert all the time.
//            NSData *trustedCertData = CFBridgingRelease(SecCertificateCopyData(trustedCert));
//            if ([trustedCertData isEqualToData:data]) {
//                validatedCertCount++;
//                break;
//            }
//        }
//    }
//    return (requiredCertCount == validatedCertCount);
    
    
    return;
}

@end

NS_ASSUME_NONNULL_END
