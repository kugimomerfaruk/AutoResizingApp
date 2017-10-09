import Foundation
import UIKit

func  boxSize () -> ( width: CGFloat, height: CGFloat) {
    let   screenWidth = (UIScreen.main.bounds.width - 60) / 2
    let   screenHeight =  (UIScreen.main.bounds.height - 60) / 2
    return ( width: screenWidth, height : screenHeight)
}

func uiFrameSize(uiFrame : CGRect, isPortrail : Bool, originX: CGFloat, originY : CGFloat) -> CGRect {

    var viewInfo = uiFrame
    let boxSizes = boxSize()
    viewInfo.origin.x = originX
    viewInfo.origin.y = originY
    
    if isPortrail == true {
        viewInfo.size.width = boxSizes.width
        viewInfo.size.height = boxSizes.height
    } else {
        viewInfo.size.width = boxSizes.height
        viewInfo.size.height = boxSizes.width
    }
return viewInfo
}
