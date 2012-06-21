//
//  View.m
//  Jun21
//
//  Created by Piyal Basu on 6/21/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor yellowColor];

    }

    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
	CGSize size = self.bounds.size;
	CGFloat min = MIN(size.width, size.height);
	CGFloat longSide = min * 10 / 20;
	CGFloat shortSide = longSide / 2;
    
	CGContextRef c = UIGraphicsGetCurrentContext();
	CGContextBeginPath(c);
    CGContextTranslateCTM(c, 200, 500); 
                            
	CGRect bar = CGRectMake(-shortSide / 2, -longSide / 2, shortSide, longSide);
	
	CGContextAddRect(c, bar);

    
	CGContextSetRGBFillColor(c, 0.0, 40.0, 0.0, 1.0);
    
    CGContextSetShadow(c, CGSizeMake(-20, -40), 45);
	CGContextFillPath(c);
    
    CGContextRef l = UIGraphicsGetCurrentContext();
    
	
	CGContextTranslateCTM(l,
                          10,
                          10
                          );
	
    
	CGContextBeginPath(l);
	CGContextMoveToPoint(l, -200, -300);          
	CGContextAddLineToPoint(l, -200, 200);  
	CGContextAddLineToPoint(l, 400, 200);

    CGContextSetLineWidth(l, 10.0);
	CGContextSetRGBStrokeColor(l, 1.0, 0.0, 0.0, 1);
	CGContextStrokePath(l);
	               
    
	CGContextSetRGBFillColor(l, 1.0, 0.0, 0.0, 1.0);
	CGContextFillPath(l);
    
    UIFont *font = [UIFont systemFontOfSize:16.0 ];
    NSString *string = @"Ran out of time this week, so introducing the world's least informative bar graph";
    CGPoint point = CGPointMake(-200.0, 210.0);
    [string drawAtPoint: point withFont: font];
    
}


@end
