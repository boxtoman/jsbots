#import "vector.h"
#include <math.h>

@implementation jsVector
@synthesize x=_x;
@synthesize y=_y;

- (id) initWithX: (float) x Y: (float) y{
	self =  [super init];
	if(self){
		self.x = x;
		self.y = y;
	}
	return self;
}

+(id) vectorWithX: (float) x Y:(float) y{
	return [[jsVector alloc] initWithX: x Y: y];
}	
+(id) vectorWithMag: (float) mag angle:(float) ang{
	return [[jsVector alloc] initWithX: mag*cos(ang) Y: mag*sin(ang)];
}

-(jsVector *) add: (jsVector*) b{
	return [[jsVector alloc] initWithX: self.x+b.x Y: self.y+b.y];
}
-(jsVector *) sub: (jsVector*) b{
	return [[jsVector alloc] initWithX: self.x-b.x Y: self.y-b.y];
}
-(float) length{
	return sqrt(_x*_x+_y*_y);
}
-(float) angle{
	return atan2(_y, _x);
}
-(jsVector *) unit{
	float length = self.length;
	
	return [[jsVector alloc] initWithX: _x/length Y: _y/length];
}
-(jsVector *) dotProduct: (jsVector *) b{
	return self;
}
-(jsVector *) crossProduct: (jsVector *) b{
	return self;
}

- (id) copyWithZone: (NSZone *) zone{
	return [[[self class] allocWithZone: zone] initWithX: self.x Y: self.y];
}

@end
