In your Xcode project, add these frameworks:
- `ARKit.framework`
- `Metal.framework` 
- `MetalKit.framework`
- `QuartzCore.framework`
- `AVFoundation.framework`
- `CoreMotion.framework`
- `Foundation.framework`
- `UIKit.framework`

### 1.3 Add MoltenVK
1. Download MoltenVK from [GitHub](https://github.com/KhronosGroup/MoltenVK/releases)
2. Add `libMoltenVK.a` to your project
3. Add MoltenVK headers to your header search paths (they are installed via brew already)

## Step 2: Add Monado OpenXR Library
### 2.1 Copy Library and Headers
# Copy the unified library to your project, it is in libopenxr_monado_unified.a

## Step 3: Configure Info.plist

Add ARKit usage description:
```xml
<key>NSCameraUsageDescription</key>
<string>This app uses ARKit for head tracking in OpenXR</string>
<key>UIRequiredDeviceCapabilities</key>
<array>
    <string>arkit</string>
    <string>metal</string>
</array>
```

