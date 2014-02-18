//
//  ApActivityData.m
//  saytheword
//
//  Created by Hoang Le on 7/11/13.
//  Copyright (c) 2013 Hoang Le. All rights reserved.
//

#import "ApActivityData.h"

@implementation APActivityProvider
- (id) activityViewController:(UIActivityViewController *)activityViewController
          itemForActivityType:(NSString *)activityType
{
    if ( [activityType isEqualToString:UIActivityTypePostToTwitter] )
        return [NSString stringWithFormat:@"OMG i just got %d score in Flappy Swain ! Play it free at https://itunes.apple.com/app/id824016618",[[NSUserDefaults standardUserDefaults] integerForKey:@"currentScore"]];
    if ( [activityType isEqualToString:UIActivityTypePostToFacebook] )
        return [NSString stringWithFormat:@"OMG i just got %d score in Flappy Swain ! Play it free at https://itunes.apple.com/app/id824016618",[[NSUserDefaults standardUserDefaults] integerForKey:@"currentScore"]];
    if ( [activityType isEqualToString:UIActivityTypeMessage] )
        return [NSString stringWithFormat:@"OMG i just got %d score in Flappy Swain ! Play it free at https://itunes.apple.com/app/id824016618",[[NSUserDefaults standardUserDefaults] integerForKey:@"currentScore"]];
    if ( [activityType isEqualToString:UIActivityTypeMail] )
        return @"Playing Flappy Bird";
    if ( [activityType isEqualToString:@"it.albertopasca.myApp"] )
        return [NSString stringWithFormat:@"OMG i just got %d score in Flappy Swain ! Play it free at https://itunes.apple.com/app/id824016618",[[NSUserDefaults standardUserDefaults] integerForKey:@"currentScore"]];
    return nil;
}
- (id) activityViewControllerPlaceholderItem:(UIActivityViewController *)activityViewController { return @""; }
@end

@implementation APActivityIcon
- (NSString *)activityType { return @"it.albertopasca.myApp"; }
- (NSString *)activityTitle { return @"Open Maps"; }
- (UIImage *) activityImage { return [UIImage imageNamed:@"lines.png"]; }
- (BOOL) canPerformWithActivityItems:(NSArray *)activityItems {
    NSLog(@"canPerformWithActivityItems");
    return YES;
}
- (void) prepareWithActivityItems:(NSArray *)activityItems {
    NSLog(@"prepareWithActivityItems");
 
}
- (UIViewController *) activityViewController { return nil; }
- (void) performActivity {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"maps://"]];
    }
@end