//
// Authors:
// Håvard Fossli <hfossli@agens.no>
// Marcus Eckert <marcuseckert@gmail.com>
//
// Copyright (c) 2013 Agens AS (http://agens.no/)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "CALayer+AGK+Properties.h"
#import "CGGeometry+AGGeometryKit.h"
#import <objc/runtime.h>
#import "AGKVector3D.h"

@implementation CALayer (AGK_Properties)

- (CGSize)frameSize
{
	return self.frame.size;
}

- (void)setFrameSize:(CGSize)value
{
	self.frame = AGKCGRectWithSize(self.frame, value);
}

- (CGFloat)frameWidth
{
	return self.frame.size.width;
}

- (void)setFrameWidth:(CGFloat)value
{
	self.frame = AGKCGRectWithWidth(self.frame, value);
}

- (CGFloat)frameHeight
{
	return self.frame.size.height;
}

- (void)setFrameHeight:(CGFloat)value
{
	self.frame = AGKCGRectWithHeight(self.frame, value);
}

- (CGSize)frameSizeHalf
{
    return AGKCGSizeHalf(self.frameSize);
}

- (CGFloat)frameHeightHalf
{
	return self.frameHeight / 2.0;
}

- (CGFloat)frameWidthHalf
{
	return self.frameWidth / 2.0;
}

- (CGPoint)frameOrigin
{
	return self.frame.origin;
}

- (void)setFrameOrigin:(CGPoint)value
{
	self.frame = AGKCGRectWithOrigin(self.frame, value);
}

- (CGFloat)frameMinX
{
    return CGRectGetMinX(self.frame);
}

- (void)setFrameMinX:(CGFloat)value
{
    self.frame = AGKCGRectWithOriginMinX(self.frame, value);
}

- (CGFloat)frameMinY
{
    return CGRectGetMinY(self.frame);
}

- (void)setFrameMinY:(CGFloat)value
{
    self.frame = AGKCGRectWithOriginMinY(self.frame, value);
}

- (CGFloat)frameMidX
{
    return CGRectGetMidX(self.frame);
}

- (void)setFrameMidX:(CGFloat)value
{
    self.frame = AGKCGRectWithOriginMidX(self.frame, value);
}

- (CGFloat)frameMidY
{
    return CGRectGetMidY(self.frame);
}

- (void)setFrameMidY:(CGFloat)value
{
    self.frame = AGKCGRectWithOriginMidY(self.frame, value);
}

- (CGFloat)frameMaxX
{
    return CGRectGetMaxX(self.frame);
}

- (void)setFrameMaxX:(CGFloat)value
{
    self.frame = AGKCGRectWithOriginMaxX(self.frame, value);
}

- (CGFloat)frameMaxY
{
    return CGRectGetMaxY(self.frame);
}

- (void)setFrameMaxY:(CGFloat)value
{
    self.frame = AGKCGRectWithOriginMaxY(self.frame, value);
}

- (CGPoint)boundsOrigin
{
	return self.bounds.origin;
}

- (void)setBoundsOrigin:(CGPoint)value
{
	self.bounds = AGKCGRectWithOrigin(self.bounds, value);
}

- (CGSize)boundsSize
{
	return self.bounds.size;
}

- (void)setBoundsSize:(CGSize)value
{
	self.bounds = AGKCGRectWithSize(self.bounds, value);
}

- (CGFloat)boundsWidth
{
	return self.bounds.size.width;
}

- (void)setBoundsWidth:(CGFloat)value
{
	self.bounds = AGKCGRectWithWidth(self.bounds, value);
}

- (CGFloat)boundsHeight
{
	return self.bounds.size.height;
}

- (void)setBoundsHeight:(CGFloat)value
{
	self.bounds = AGKCGRectWithHeight(self.bounds, value);
}

- (CGFloat)boundsHeightHalf
{
	return self.boundsHeight / 2.0;
}

- (CGFloat)boundsWidthHalf
{
	return self.boundsWidth / 2.0;
}

- (CGSize)boundsSizeHalf
{
    return AGKCGSizeHalf(self.boundsSize);
}

- (CGPoint)boundsCenter
{
    return CGPointMake(self.boundsWidthHalf, self.boundsHeightHalf);
}

- (CGFloat)positionX
{
	return self.position.x;
}

- (void)setPositionX:(CGFloat)value
{
	self.position = CGPointMake(value, self.position.y);
}

- (CGFloat)positionY
{
	return self.position.y;
}

- (void)setPositionY:(CGFloat)value
{
	self.position = CGPointMake(self.position.x, value);
}

- (CGFloat)anchorPointX
{
    return self.anchorPoint.x;
}

- (void)setAnchorPointX:(CGFloat)value
{
    self.anchorPoint = CGPointMake(value, self.anchorPoint.y);
}

- (CGFloat)anchorPointY
{
    return self.anchorPoint.y;
}

- (void)setAnchorPointY:(CGFloat)value
{
    self.anchorPoint = CGPointMake(self.anchorPoint.x, value);
}

@end
