# BundledCocoapodDynamicFrameworkError

This is an example `pod` (and its Demo integration project) that triggers an error when attempting to bundle a dynamic framework inside a pod via `vendored_frameworks` DSL command on `.podspec` using cocoapods 1.1.1

## Steps to reproduce

#### Cocoapods version

I've tried versions `1.1.1` and `1.2.0.beta.3` for this test.

Currently a `Gemfile` is locked to `1.2.0.beta.3` but you can change it to `1.1.1` to test.

#### Dynamic framework

I've created a sample dynamic framework, on `SampleDynamicLib` folder. Before you ask, I've made sure that this framework has all the architecture slices ("fat framework").

That project has a Post-Install run script that builds a "fat framework" - for `i386` and `arm64` archs and using `lipo -create` to join the arch slices.

That framework only features a sample class: `SampleClass.{.h/.m}` (in Objective-C) and exposed via bridging header `SampleDynamicLib.h`.

#### Podspec

The `podspec` is referencing the `SampleDynamicLib.framework` via:

```
s.vendored_frameworks = 'BundledCocoapodDynamicFrameworkError/Frameworks/SampleDynamicLib.framework'
```

## Installation

1. Enter the `Example` folder and run `bundle && bundle exec pod install`

2. Run Build and see the error triggered:
```
ld: framework not found SampleDynamicLib for architecture x86_64
```
3. If you change the device to a Generic one, you'll hit the same error, but for arm64 architecture:
```
ld: framework not found SampleDynamicLib for architecture arm64
```

## Any help?

I'm struggling with this error for quite some time. If someone solved this problem in any way, please shout.

Maybe is this a bug with Cococapods `vendored_frameworks` DSL command, or any config problem of the pod?
