To solve the retain cycle, use `weak` references where appropriate.  Here's a corrected version:

```objectivec
@interface MyClass : NSObject
@property (weak, nonatomic) NSString *myString; // Changed to weak
@end

@implementation MyClass
- (void)someMethod {
    self.myString = [NSString stringWithFormat:@"Hello, world!"];
    // ... some code ...
}
@end
```

By declaring `myString` as `weak`, we break the retain cycle. The `weak` reference doesn't increase the retain count, preventing the cycle.  Careful consideration of reference types is crucial for robust memory management in Objective-C.