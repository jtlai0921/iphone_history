import UIKit

struct SomeStructure{
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty:Int{
        return 1;
    }
}

enum SomeEnumeration{
    static var storedTypeProperty = "Some value";
    static var computedTypeProperty:Int{
        return 6
    }
}

class SomeClass{
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty:Int{
        return 27
    }
    
    class var overrideableComputedTypeProperty:Int{
        return 107;
    }
}

SomeStructure.storedTypeProperty;
SomeStructure.computedTypeProperty;

SomeEnumeration.storedTypeProperty;
SomeEnumeration.computedTypeProperty;

SomeClass.storedTypeProperty;
SomeClass.computedTypeProperty;
SomeClass.overrideableComputedTypeProperty;
