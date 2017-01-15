import Foundation
import SampleDynamicLib

public struct MyLibSampleStruct {

    /// example of an instance of the framework's class
    let sampleInstance = SampleClass()
    
    public init() {}
    
    /// Attempt to access my pod's struct
    ///
    /// - Returns: some value as Int
    public func versionOfSampleInstance() -> Int {
    
        return self.sampleInstance.classVersionNumber
    }
}
