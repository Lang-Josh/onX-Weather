import UIKit

extension UIColor {
    
    /// Create Color from RGB values with optional alpha.
    ///
    /// - Parameters:
    ///   - red: red component.
    ///   - green: green component.
    ///   - blue: blue component.
    ///   - alpha: optional alpha value (default is 1).
    convenience init?(red: Int, green: Int, blue: Int, alpha: CGFloat = 1) {
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: alpha)
    }
    
    /// Create Color from hexadecimal value with optional alpha.
    ///
    /// - Parameters:
    ///   - hex: hex Int (example: 0xDECEB5).
    ///   - alpha: optional alpha value (default is 1).
    convenience init?(hex: Int, alpha: CGFloat = 1) {
        let red = (hex >> 16) & 0xFF
        let green = (hex >> 8) & 0xFF
        let blue = hex & 0xFF
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    /// Google Material design colors palette.
    enum Material {
        // https://material.google.com/style/color.html
        
        /// color red500
        public static let red = red500
        
        /// hex #FFEBEE
        public static let red50 = UIColor(hex: 0xFFEBEE)!
        
        /// hex #FFCDD2
        public static let red100 = UIColor(hex: 0xFFCDD2)!
        
        /// hex #EF9A9A
        public static let red200 = UIColor(hex: 0xEF9A9A)!
        
        /// hex #E57373
        public static let red300 = UIColor(hex: 0xE57373)!
        
        /// hex #EF5350
        public static let red400 = UIColor(hex: 0xEF5350)!
        
        /// hex #F44336
        public static let red500 = UIColor(hex: 0xF44336)!
        
        /// hex #E53935
        public static let red600 = UIColor(hex: 0xE53935)!
        
        /// hex #D32F2F
        public static let red700 = UIColor(hex: 0xD32F2F)!
        
        /// hex #C62828
        public static let red800 = UIColor(hex: 0xC62828)!
        
        /// hex #B71C1C
        public static let red900 = UIColor(hex: 0xB71C1C)!
        
        /// hex #FF8A80
        public static let redA100 = UIColor(hex: 0xFF8A80)!
        
        /// hex #FF5252
        public static let redA200 = UIColor(hex: 0xFF5252)!
        
        /// hex #FF1744
        public static let redA400 = UIColor(hex: 0xFF1744)!
        
        /// hex #D50000
        public static let redA700 = UIColor(hex: 0xD50000)!
        
        /// color pink500
        public static let pink = pink500
        
        /// hex #FCE4EC
        public static let pink50 = UIColor(hex: 0xFCE4EC)!
        
        /// hex #F8BBD0
        public static let pink100 = UIColor(hex: 0xF8BBD0)!
        
        /// hex #F48FB1
        public static let pink200 = UIColor(hex: 0xF48FB1)!
        
        /// hex #F06292
        public static let pink300 = UIColor(hex: 0xF06292)!
        
        /// hex #EC407A
        public static let pink400 = UIColor(hex: 0xEC407A)!
        
        /// hex #E91E63
        public static let pink500 = UIColor(hex: 0xE91E63)!
        
        /// hex #D81B60
        public static let pink600 = UIColor(hex: 0xD81B60)!
        
        /// hex #C2185B
        public static let pink700 = UIColor(hex: 0xC2185B)!
        
        /// hex #AD1457
        public static let pink800 = UIColor(hex: 0xAD1457)!
        
        /// hex #880E4F
        public static let pink900 = UIColor(hex: 0x880E4F)!
        
        /// hex #FF80AB
        public static let pinkA100 = UIColor(hex: 0xFF80AB)!
        
        /// hex #FF4081
        public static let pinkA200 = UIColor(hex: 0xFF4081)!
        
        /// hex #F50057
        public static let pinkA400 = UIColor(hex: 0xF50057)!
        
        /// hex #C51162
        public static let pinkA700 = UIColor(hex: 0xC51162)!
        
        /// color purple500
        public static let purple = purple500
        
        /// hex #F3E5F5
        public static let purple50 = UIColor(hex: 0xF3E5F5)!
        
        /// hex #E1BEE7
        public static let purple100 = UIColor(hex: 0xE1BEE7)!
        
        /// hex #CE93D8
        public static let purple200 = UIColor(hex: 0xCE93D8)!
        
        /// hex #BA68C8
        public static let purple300 = UIColor(hex: 0xBA68C8)!
        
        /// hex #AB47BC
        public static let purple400 = UIColor(hex: 0xAB47BC)!
        
        /// hex #9C27B0
        public static let purple500 = UIColor(hex: 0x9C27B0)!
        
        /// hex #8E24AA
        public static let purple600 = UIColor(hex: 0x8E24AA)!
        
        /// hex #7B1FA2
        public static let purple700 = UIColor(hex: 0x7B1FA2)!
        
        /// hex #6A1B9A
        public static let purple800 = UIColor(hex: 0x6A1B9A)!
        
        /// hex #4A148C
        public static let purple900 = UIColor(hex: 0x4A148C)!
        
        /// hex #EA80FC
        public static let purpleA100 = UIColor(hex: 0xEA80FC)!
        
        /// hex #E040FB
        public static let purpleA200 = UIColor(hex: 0xE040FB)!
        
        /// hex #D500F9
        public static let purpleA400 = UIColor(hex: 0xD500F9)!
        
        /// hex #AA00FF
        public static let purpleA700 = UIColor(hex: 0xAA00FF)!
        
        /// color deepPurple500
        public static let deepPurple = deepPurple500
        
        /// hex #EDE7F6
        public static let deepPurple50 = UIColor(hex: 0xEDE7F6)!
        
        /// hex #D1C4E9
        public static let deepPurple100 = UIColor(hex: 0xD1C4E9)!
        
        /// hex #B39DDB
        public static let deepPurple200 = UIColor(hex: 0xB39DDB)!
        
        /// hex #9575CD
        public static let deepPurple300 = UIColor(hex: 0x9575CD)!
        
        /// hex #7E57C2
        public static let deepPurple400 = UIColor(hex: 0x7E57C2)!
        
        /// hex #673AB7
        public static let deepPurple500 = UIColor(hex: 0x673AB7)!
        
        /// hex #5E35B1
        public static let deepPurple600 = UIColor(hex: 0x5E35B1)!
        
        /// hex #512DA8
        public static let deepPurple700 = UIColor(hex: 0x512DA8)!
        
        /// hex #4527A0
        public static let deepPurple800 = UIColor(hex: 0x4527A0)!
        
        /// hex #311B92
        public static let deepPurple900 = UIColor(hex: 0x311B92)!
        
        /// hex #B388FF
        public static let deepPurpleA100 = UIColor(hex: 0xB388FF)!
        
        /// hex #7C4DFF
        public static let deepPurpleA200 = UIColor(hex: 0x7C4DFF)!
        
        /// hex #651FFF
        public static let deepPurpleA400 = UIColor(hex: 0x651FFF)!
        
        /// hex #6200EA
        public static let deepPurpleA700 = UIColor(hex: 0x6200EA)!
        
        /// color indigo500
        public static let indigo = indigo500
        
        /// hex #E8EAF6
        public static let indigo50 = UIColor(hex: 0xE8EAF6)!
        
        /// hex #C5CAE9
        public static let indigo100 = UIColor(hex: 0xC5CAE9)!
        
        /// hex #9FA8DA
        public static let indigo200 = UIColor(hex: 0x9FA8DA)!
        
        /// hex #7986CB
        public static let indigo300 = UIColor(hex: 0x7986CB)!
        
        /// hex #5C6BC0
        public static let indigo400 = UIColor(hex: 0x5C6BC0)!
        
        /// hex #3F51B5
        public static let indigo500 = UIColor(hex: 0x3F51B5)!
        
        /// hex #3949AB
        public static let indigo600 = UIColor(hex: 0x3949AB)!
        
        /// hex #303F9F
        public static let indigo700 = UIColor(hex: 0x303F9F)!
        
        /// hex #283593
        public static let indigo800 = UIColor(hex: 0x283593)!
        
        /// hex #1A237E
        public static let indigo900 = UIColor(hex: 0x1A237E)!
        
        /// hex #8C9EFF
        public static let indigoA100 = UIColor(hex: 0x8C9EFF)!
        
        /// hex #536DFE
        public static let indigoA200 = UIColor(hex: 0x536DFE)!
        
        /// hex #3D5AFE
        public static let indigoA400 = UIColor(hex: 0x3D5AFE)!
        
        /// hex #304FFE
        public static let indigoA700 = UIColor(hex: 0x304FFE)!
        
        /// color blue500
        public static let blue = blue500
        
        /// hex #E3F2FD
        public static let blue50 = UIColor(hex: 0xE3F2FD)!
        
        /// hex #BBDEFB
        public static let blue100 = UIColor(hex: 0xBBDEFB)!
        
        /// hex #90CAF9
        public static let blue200 = UIColor(hex: 0x90CAF9)!
        
        /// hex #64B5F6
        public static let blue300 = UIColor(hex: 0x64B5F6)!
        
        /// hex #42A5F5
        public static let blue400 = UIColor(hex: 0x42A5F5)!
        
        /// hex #2196F3
        public static let blue500 = UIColor(hex: 0x2196F3)!
        
        /// hex #1E88E5
        public static let blue600 = UIColor(hex: 0x1E88E5)!
        
        /// hex #1976D2
        public static let blue700 = UIColor(hex: 0x1976D2)!
        
        /// hex #1565C0
        public static let blue800 = UIColor(hex: 0x1565C0)!
        
        /// hex #0D47A1
        public static let blue900 = UIColor(hex: 0x0D47A1)!
        
        /// hex #82B1FF
        public static let blueA100 = UIColor(hex: 0x82B1FF)!
        
        /// hex #448AFF
        public static let blueA200 = UIColor(hex: 0x448AFF)!
        
        /// hex #2979FF
        public static let blueA400 = UIColor(hex: 0x2979FF)!
        
        /// hex #2962FF
        public static let blueA700 = UIColor(hex: 0x2962FF)!
        
        /// color lightBlue500
        public static let lightBlue = lightBlue500
        
        /// hex #E1F5FE
        public static let lightBlue50 = UIColor(hex: 0xE1F5FE)!
        
        /// hex #B3E5FC
        public static let lightBlue100 = UIColor(hex: 0xB3E5FC)!
        
        /// hex #81D4FA
        public static let lightBlue200 = UIColor(hex: 0x81D4FA)!
        
        /// hex #4FC3F7
        public static let lightBlue300 = UIColor(hex: 0x4FC3F7)!
        
        /// hex #29B6F6
        public static let lightBlue400 = UIColor(hex: 0x29B6F6)!
        
        /// hex #03A9F4
        public static let lightBlue500 = UIColor(hex: 0x03A9F4)!
        
        /// hex #039BE5
        public static let lightBlue600 = UIColor(hex: 0x039BE5)!
        
        /// hex #0288D1
        public static let lightBlue700 = UIColor(hex: 0x0288D1)!
        
        /// hex #0277BD
        public static let lightBlue800 = UIColor(hex: 0x0277BD)!
        
        /// hex #01579B
        public static let lightBlue900 = UIColor(hex: 0x01579B)!
        
        /// hex #80D8FF
        public static let lightBlueA100 = UIColor(hex: 0x80D8FF)!
        
        /// hex #40C4FF
        public static let lightBlueA200 = UIColor(hex: 0x40C4FF)!
        
        /// hex #00B0FF
        public static let lightBlueA400 = UIColor(hex: 0x00B0FF)!
        
        /// hex #0091EA
        public static let lightBlueA700 = UIColor(hex: 0x0091EA)!
        
        /// color cyan500
        public static let cyan = cyan500
        
        /// hex #E0F7FA
        public static let cyan50 = UIColor(hex: 0xE0F7FA)!
        
        /// hex #B2EBF2
        public static let cyan100 = UIColor(hex: 0xB2EBF2)!
        
        /// hex #80DEEA
        public static let cyan200 = UIColor(hex: 0x80DEEA)!
        
        /// hex #4DD0E1
        public static let cyan300 = UIColor(hex: 0x4DD0E1)!
        
        /// hex #26C6DA
        public static let cyan400 = UIColor(hex: 0x26C6DA)!
        
        /// hex #00BCD4
        public static let cyan500 = UIColor(hex: 0x00BCD4)!
        
        /// hex #00ACC1
        public static let cyan600 = UIColor(hex: 0x00ACC1)!
        
        /// hex #0097A7
        public static let cyan700 = UIColor(hex: 0x0097A7)!
        
        /// hex #00838F
        public static let cyan800 = UIColor(hex: 0x00838F)!
        
        /// hex #006064
        public static let cyan900 = UIColor(hex: 0x006064)!
        
        /// hex #84FFFF
        public static let cyanA100 = UIColor(hex: 0x84FFFF)!
        
        /// hex #18FFFF
        public static let cyanA200 = UIColor(hex: 0x18FFFF)!
        
        /// hex #00E5FF
        public static let cyanA400 = UIColor(hex: 0x00E5FF)!
        
        /// hex #00B8D4
        public static let cyanA700 = UIColor(hex: 0x00B8D4)!
        
        /// color teal500
        public static let teal = teal500
        
        /// hex #E0F2F1
        public static let teal50 = UIColor(hex: 0xE0F2F1)!
        
        /// hex #B2DFDB
        public static let teal100 = UIColor(hex: 0xB2DFDB)!
        
        /// hex #80CBC4
        public static let teal200 = UIColor(hex: 0x80CBC4)!
        
        /// hex #4DB6AC
        public static let teal300 = UIColor(hex: 0x4DB6AC)!
        
        /// hex #26A69A
        public static let teal400 = UIColor(hex: 0x26A69A)!
        
        /// hex #009688
        public static let teal500 = UIColor(hex: 0x009688)!
        
        /// hex #00897B
        public static let teal600 = UIColor(hex: 0x00897B)!
        
        /// hex #00796B
        public static let teal700 = UIColor(hex: 0x00796B)!
        
        /// hex #00695C
        public static let teal800 = UIColor(hex: 0x00695C)!
        
        /// hex #004D40
        public static let teal900 = UIColor(hex: 0x004D40)!
        
        /// hex #A7FFEB
        public static let tealA100 = UIColor(hex: 0xA7FFEB)!
        
        /// hex #64FFDA
        public static let tealA200 = UIColor(hex: 0x64FFDA)!
        
        /// hex #1DE9B6
        public static let tealA400 = UIColor(hex: 0x1DE9B6)!
        
        /// hex #00BFA5
        public static let tealA700 = UIColor(hex: 0x00BFA5)!
        
        /// color green500
        public static let green = green500
        
        /// hex #E8F5E9
        public static let green50 = UIColor(hex: 0xE8F5E9)!
        
        /// hex #C8E6C9
        public static let green100 = UIColor(hex: 0xC8E6C9)!
        
        /// hex #A5D6A7
        public static let green200 = UIColor(hex: 0xA5D6A7)!
        
        /// hex #81C784
        public static let green300 = UIColor(hex: 0x81C784)!
        
        /// hex #66BB6A
        public static let green400 = UIColor(hex: 0x66BB6A)!
        
        /// hex #4CAF50
        public static let green500 = UIColor(hex: 0x4CAF50)!
        
        /// hex #43A047
        public static let green600 = UIColor(hex: 0x43A047)!
        
        /// hex #388E3C
        public static let green700 = UIColor(hex: 0x388E3C)!
        
        /// hex #2E7D32
        public static let green800 = UIColor(hex: 0x2E7D32)!
        
        /// hex #1B5E20
        public static let green900 = UIColor(hex: 0x1B5E20)!
        
        /// hex #B9F6CA
        public static let greenA100 = UIColor(hex: 0xB9F6CA)!
        
        /// hex #69F0AE
        public static let greenA200 = UIColor(hex: 0x69F0AE)!
        
        /// hex #00E676
        public static let greenA400 = UIColor(hex: 0x00E676)!
        
        /// hex #00C853
        public static let greenA700 = UIColor(hex: 0x00C853)!
        
        /// color lightGreen500
        public static let lightGreen = lightGreen500
        
        /// hex #F1F8E9
        public static let lightGreen50 = UIColor(hex: 0xF1F8E9)!
        
        /// hex #DCEDC8
        public static let lightGreen100 = UIColor(hex: 0xDCEDC8)!
        
        /// hex #C5E1A5
        public static let lightGreen200 = UIColor(hex: 0xC5E1A5)!
        
        /// hex #AED581
        public static let lightGreen300 = UIColor(hex: 0xAED581)!
        
        /// hex #9CCC65
        public static let lightGreen400 = UIColor(hex: 0x9CCC65)!
        
        /// hex #8BC34A
        public static let lightGreen500 = UIColor(hex: 0x8BC34A)!
        
        /// hex #7CB342
        public static let lightGreen600 = UIColor(hex: 0x7CB342)!
        
        /// hex #689F38
        public static let lightGreen700 = UIColor(hex: 0x689F38)!
        
        /// hex #558B2F
        public static let lightGreen800 = UIColor(hex: 0x558B2F)!
        
        /// hex #33691E
        public static let lightGreen900 = UIColor(hex: 0x33691E)!
        
        /// hex #CCFF90
        public static let lightGreenA100 = UIColor(hex: 0xCCFF90)!
        
        /// hex #B2FF59
        public static let lightGreenA200 = UIColor(hex: 0xB2FF59)!
        
        /// hex #76FF03
        public static let lightGreenA400 = UIColor(hex: 0x76FF03)!
        
        /// hex #64DD17
        public static let lightGreenA700 = UIColor(hex: 0x64DD17)!
        
        /// color lime500
        public static let lime = lime500
        
        /// hex #F9FBE7
        public static let lime50 = UIColor(hex: 0xF9FBE7)!
        
        /// hex #F0F4C3
        public static let lime100 = UIColor(hex: 0xF0F4C3)!
        
        /// hex #E6EE9C
        public static let lime200 = UIColor(hex: 0xE6EE9C)!
        
        /// hex #DCE775
        public static let lime300 = UIColor(hex: 0xDCE775)!
        
        /// hex #D4E157
        public static let lime400 = UIColor(hex: 0xD4E157)!
        
        /// hex #CDDC39
        public static let lime500 = UIColor(hex: 0xCDDC39)!
        
        /// hex #C0CA33
        public static let lime600 = UIColor(hex: 0xC0CA33)!
        
        /// hex #AFB42B
        public static let lime700 = UIColor(hex: 0xAFB42B)!
        
        /// hex #9E9D24
        public static let lime800 = UIColor(hex: 0x9E9D24)!
        
        /// hex #827717
        public static let lime900 = UIColor(hex: 0x827717)!
        
        /// hex #F4FF81
        public static let limeA100 = UIColor(hex: 0xF4FF81)!
        
        /// hex #EEFF41
        public static let limeA200 = UIColor(hex: 0xEEFF41)!
        
        /// hex #C6FF00
        public static let limeA400 = UIColor(hex: 0xC6FF00)!
        
        /// hex #AEEA00
        public static let limeA700 = UIColor(hex: 0xAEEA00)!
        
        /// color yellow500
        public static let yellow = yellow500
        
        /// hex #FFFDE7
        public static let yellow50 = UIColor(hex: 0xFFFDE7)!
        
        /// hex #FFF9C4
        public static let yellow100 = UIColor(hex: 0xFFF9C4)!
        
        /// hex #FFF59D
        public static let yellow200 = UIColor(hex: 0xFFF59D)!
        
        /// hex #FFF176
        public static let yellow300 = UIColor(hex: 0xFFF176)!
        
        /// hex #FFEE58
        public static let yellow400 = UIColor(hex: 0xFFEE58)!
        
        /// hex #FFEB3B
        public static let yellow500 = UIColor(hex: 0xFFEB3B)!
        
        /// hex #FDD835
        public static let yellow600 = UIColor(hex: 0xFDD835)!
        
        /// hex #FBC02D
        public static let yellow700 = UIColor(hex: 0xFBC02D)!
        
        /// hex #F9A825
        public static let yellow800 = UIColor(hex: 0xF9A825)!
        
        /// hex #F57F17
        public static let yellow900 = UIColor(hex: 0xF57F17)!
        
        /// hex #FFFF8D
        public static let yellowA100 = UIColor(hex: 0xFFFF8D)!
        
        /// hex #FFFF00
        public static let yellowA200 = UIColor(hex: 0xFFFF00)!
        
        /// hex #FFEA00
        public static let yellowA400 = UIColor(hex: 0xFFEA00)!
        
        /// hex #FFD600
        public static let yellowA700 = UIColor(hex: 0xFFD600)!
        
        /// color amber500
        public static let amber = amber500
        
        /// hex #FFF8E1
        public static let amber50 = UIColor(hex: 0xFFF8E1)!
        
        /// hex #FFECB3
        public static let amber100 = UIColor(hex: 0xFFECB3)!
        
        /// hex #FFE082
        public static let amber200 = UIColor(hex: 0xFFE082)!
        
        /// hex #FFD54F
        public static let amber300 = UIColor(hex: 0xFFD54F)!
        
        /// hex #FFCA28
        public static let amber400 = UIColor(hex: 0xFFCA28)!
        
        /// hex #FFC107
        public static let amber500 = UIColor(hex: 0xFFC107)!
        
        /// hex #FFB300
        public static let amber600 = UIColor(hex: 0xFFB300)!
        
        /// hex #FFA000
        public static let amber700 = UIColor(hex: 0xFFA000)!
        
        /// hex #FF8F00
        public static let amber800 = UIColor(hex: 0xFF8F00)!
        
        /// hex #FF6F00
        public static let amber900 = UIColor(hex: 0xFF6F00)!
        
        /// hex #FFE57F
        public static let amberA100 = UIColor(hex: 0xFFE57F)!
        
        /// hex #FFD740
        public static let amberA200 = UIColor(hex: 0xFFD740)!
        
        /// hex #FFC400
        public static let amberA400 = UIColor(hex: 0xFFC400)!
        
        /// hex #FFAB00
        public static let amberA700 = UIColor(hex: 0xFFAB00)!
        
        /// color orange500
        public static let orange = orange500
        
        /// hex #FFF3E0
        public static let orange50 = UIColor(hex: 0xFFF3E0)!
        
        /// hex #FFE0B2
        public static let orange100 = UIColor(hex: 0xFFE0B2)!
        
        /// hex #FFCC80
        public static let orange200 = UIColor(hex: 0xFFCC80)!
        
        /// hex #FFB74D
        public static let orange300 = UIColor(hex: 0xFFB74D)!
        
        /// hex #FFA726
        public static let orange400 = UIColor(hex: 0xFFA726)!
        
        /// hex #FF9800
        public static let orange500 = UIColor(hex: 0xFF9800)!
        
        /// hex #FB8C00
        public static let orange600 = UIColor(hex: 0xFB8C00)!
        
        /// hex #F57C00
        public static let orange700 = UIColor(hex: 0xF57C00)!
        
        /// hex #EF6C00
        public static let orange800 = UIColor(hex: 0xEF6C00)!
        
        /// hex #E65100
        public static let orange900 = UIColor(hex: 0xE65100)!
        
        /// hex #FFD180
        public static let orangeA100 = UIColor(hex: 0xFFD180)!
        
        /// hex #FFAB40
        public static let orangeA200 = UIColor(hex: 0xFFAB40)!
        
        /// hex #FF9100
        public static let orangeA400 = UIColor(hex: 0xFF9100)!
        
        /// hex #FF6D00
        public static let orangeA700 = UIColor(hex: 0xFF6D00)!
        
        /// color deepOrange500
        public static let deepOrange = deepOrange500
        
        /// hex #FBE9E7
        public static let deepOrange50 = UIColor(hex: 0xFBE9E7)!
        
        /// hex #FFCCBC
        public static let deepOrange100 = UIColor(hex: 0xFFCCBC)!
        
        /// hex #FFAB91
        public static let deepOrange200 = UIColor(hex: 0xFFAB91)!
        
        /// hex #FF8A65
        public static let deepOrange300 = UIColor(hex: 0xFF8A65)!
        
        /// hex #FF7043
        public static let deepOrange400 = UIColor(hex: 0xFF7043)!
        
        /// hex #FF5722
        public static let deepOrange500 = UIColor(hex: 0xFF5722)!
        
        /// hex #F4511E
        public static let deepOrange600 = UIColor(hex: 0xF4511E)!
        
        /// hex #E64A19
        public static let deepOrange700 = UIColor(hex: 0xE64A19)!
        
        /// hex #D84315
        public static let deepOrange800 = UIColor(hex: 0xD84315)!
        
        /// hex #BF360C
        public static let deepOrange900 = UIColor(hex: 0xBF360C)!
        
        /// hex #FF9E80
        public static let deepOrangeA100 = UIColor(hex: 0xFF9E80)!
        
        /// hex #FF6E40
        public static let deepOrangeA200 = UIColor(hex: 0xFF6E40)!
        
        /// hex #FF3D00
        public static let deepOrangeA400 = UIColor(hex: 0xFF3D00)!
        
        /// hex #DD2C00
        public static let deepOrangeA700 = UIColor(hex: 0xDD2C00)!
        
        /// color brown500
        public static let brown = brown500
        
        /// hex #EFEBE9
        public static let brown50 = UIColor(hex: 0xEFEBE9)!
        
        /// hex #D7CCC8
        public static let brown100 = UIColor(hex: 0xD7CCC8)!
        
        /// hex #BCAAA4
        public static let brown200 = UIColor(hex: 0xBCAAA4)!
        
        /// hex #A1887F
        public static let brown300 = UIColor(hex: 0xA1887F)!
        
        /// hex #8D6E63
        public static let brown400 = UIColor(hex: 0x8D6E63)!
        
        /// hex #795548
        public static let brown500 = UIColor(hex: 0x795548)!
        
        /// hex #6D4C41
        public static let brown600 = UIColor(hex: 0x6D4C41)!
        
        /// hex #5D4037
        public static let brown700 = UIColor(hex: 0x5D4037)!
        
        /// hex #4E342E
        public static let brown800 = UIColor(hex: 0x4E342E)!
        
        /// hex #3E2723
        public static let brown900 = UIColor(hex: 0x3E2723)!
        
        /// color grey500
        public static let grey = grey500
        
        /// hex #FAFAFA
        public static let grey50 = UIColor(hex: 0xFAFAFA)!
        
        /// hex #F5F5F5
        public static let grey100 = UIColor(hex: 0xF5F5F5)!
        
        /// hex #EEEEEE
        public static let grey200 = UIColor(hex: 0xEEEEEE)!
        
        /// hex #E0E0E0
        public static let grey300 = UIColor(hex: 0xE0E0E0)!
        
        /// hex #BDBDBD
        public static let grey400 = UIColor(hex: 0xBDBDBD)!
        
        /// hex #9E9E9E
        public static let grey500 = UIColor(hex: 0x9E9E9E)!
        
        /// hex #757575
        public static let grey600 = UIColor(hex: 0x757575)!
        
        /// hex #616161
        public static let grey700 = UIColor(hex: 0x616161)!
        
        /// hex #424242
        public static let grey800 = UIColor(hex: 0x424242)!
        
        /// hex #212121
        public static let grey900 = UIColor(hex: 0x212121)!
        
        /// color blueGrey500
        public static let blueGrey = blueGrey500
        
        /// hex #ECEFF1
        public static let blueGrey50 = UIColor(hex: 0xECEFF1)!
        
        /// hex #CFD8DC
        public static let blueGrey100 = UIColor(hex: 0xCFD8DC)!
        
        /// hex #B0BEC5
        public static let blueGrey200 = UIColor(hex: 0xB0BEC5)!
        
        /// hex #90A4AE
        public static let blueGrey300 = UIColor(hex: 0x90A4AE)!
        
        /// hex #78909C
        public static let blueGrey400 = UIColor(hex: 0x78909C)!
        
        /// hex #607D8B
        public static let blueGrey500 = UIColor(hex: 0x607D8B)!
        
        /// hex #546E7A
        public static let blueGrey600 = UIColor(hex: 0x546E7A)!
        
        /// hex #455A64
        public static let blueGrey700 = UIColor(hex: 0x455A64)!
        
        /// hex #37474F
        public static let blueGrey800 = UIColor(hex: 0x37474F)!
        
        /// hex #263238
        public static let blueGrey900 = UIColor(hex: 0x263238)!
        
        /// hex #000000
        public static let black = UIColor(hex: 0x000000)!
        
        /// hex #FFFFFF
        public static let white = UIColor(hex: 0xFFFFFF)!
    }
}

// MARK: - Flat UI colors

public extension UIColor {
    /// Flat UI colors
    ///
    /// Link: http://www.flatuicolors.com
    enum FlatUI {
        
        /// hex #1ABC9C
        public static let turquoise = UIColor(hex: 0x1ABC9C)!
        
        /// hex #16A085
        public static let greenSea = UIColor(hex: 0x16A085)!
        
        /// hex #2ECC71
        public static let emerald = UIColor(hex: 0x2ECC71)!
        
        /// hex #27AE60
        public static let nephritis = UIColor(hex: 0x27AE60)!
        
        /// hex #3498DB
        public static let peterRiver = UIColor(hex: 0x3498DB)!
        
        /// hex #2980B9
        public static let belizeHole = UIColor(hex: 0x2980B9)!
        
        /// hex #9B59B6
        public static let amethyst = UIColor(hex: 0x9B59B6)!
        
        /// hex #8E44AD
        public static let wisteria = UIColor(hex: 0x8E44AD)!
        
        /// hex #34495E
        public static let wetAsphalt = UIColor(hex: 0x34495E)!
        
        /// hex #2C3E50
        public static let midnightBlue = UIColor(hex: 0x2C3E50)!
        
        /// hex #F1C40F
        public static let sunFlower = UIColor(hex: 0xF1C40F)!
        
        /// hex #F39C12
        public static let flatOrange = UIColor(hex: 0xF39C12)!
        
        /// hex #E67E22
        public static let carrot = UIColor(hex: 0xE67E22)!
        
        /// hex #D35400
        public static let pumpkin = UIColor(hex: 0xD35400)!
        
        /// hex #E74C3C
        public static let alizarin = UIColor(hex: 0xE74C3C)!
        
        /// hex #C0392B
        public static let pomegranate = UIColor(hex: 0xC0392B)!
        
        /// hex #ECF0F1
        public static let clouds = UIColor(hex: 0xECF0F1)!
        
        /// hex #BDC3C7
        public static let silver = UIColor(hex: 0xBDC3C7)!
        
        /// hex #7F8C8D
        public static let asbestos = UIColor(hex: 0x7F8C8D)!
        
        /// hex #95A5A6
        public static let concrete = UIColor(hex: 0x95A5A6)!
    }
}
