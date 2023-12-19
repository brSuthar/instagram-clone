
import UIKit;

class Colors {
    static let raisinBlack: UIColor = UIColor(hex: "#262524")
    static let shark: UIColor = UIColor(hex: "#1F1F20")
    static let alab: UIColor = UIColor(hex: "#FCFCFC")
    static let tundora: UIColor = UIColor(hex: "#494949")
    static let shark_lite: UIColor = UIColor(hex: "#303234")
    static let radiance: UIColor = UIColor(hex: "#1877F2")
    
    //text colors
    static let silver: UIColor = UIColor(hex: "#CCCCCC")
    static let curious_blue: UIColor = UIColor(hex: "#32A1E0")
}


extension UIColor {
    static let offWhite = UIColor.init(red: 225/255, green: 225/255, blue: 235/255, alpha: 1)
    
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0

        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
