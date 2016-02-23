//
//  DMKeychain.h
//
//  Version 1.5.1
//

#import <Foundation/Foundation.h>
#import <Security/Security.h>


#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wobjc-missing-property-synthesis"


#ifndef DMKeychain_USE_NSCODING
#if TARGET_OS_IPHONE
#define DMKeychain_USE_NSCODING 1
#else
#define DMKeychain_USE_NSCODING 0
#endif
#endif


typedef NS_ENUM(NSInteger, DMKeychainAccess)
{
    DMKeychainAccessibleWhenUnlocked = 0,
    DMKeychainAccessibleAfterFirstUnlock,
    DMKeychainAccessibleAlways,
    DMKeychainAccessibleWhenUnlockedThisDeviceOnly,
    DMKeychainAccessibleAfterFirstUnlockThisDeviceOnly,
    DMKeychainAccessibleAlwaysThisDeviceOnly
};


@interface DMKeychain : NSObject

+ (instancetype)defaultKeychain;

@property (nonatomic, readonly) NSString *service;
@property (nonatomic, readonly) NSString *accessGroup;
@property (nonatomic, assign) DMKeychainAccess accessibility;

- (id)initWithService:(NSString *)service
          accessGroup:(NSString *)accessGroup
        accessibility:(DMKeychainAccess)accessibility;

- (id)initWithService:(NSString *)service
          accessGroup:(NSString *)accessGroup;

- (BOOL)setObject:(id)object forKey:(id)key;
- (BOOL)setObject:(id)object forKeyedSubscript:(id)key;
- (BOOL)removeObjectForKey:(id)key;
- (id)objectForKey:(id)key;
- (id)objectForKeyedSubscript:(id)key;

@end


#pragma GCC diagnostic pop

