//
//  RSAEncryption.h
//  RSAUtil
//
//  Created by ideawu on 7/14/15.
//  Copyright (c) 2015 ideawu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
@interface  RSAEncryption : UIViewController

    - (NSData *)generateRSAPublicKeyWithModulus:(NSData *)modulus exponent:(NSData *)exponent;
    -(NSString*)sha256HashFor:(NSString*)input;
@end

