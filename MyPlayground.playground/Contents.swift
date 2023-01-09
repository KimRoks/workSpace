import UIKit


var isChecked = false
if isChecked {
    print("체크되어있음")
}else {
    print("체크 ㄴㄴ")
}

var time = 10

if time == 9 {
    print("아침식사")
} else if time == 12 {
    print("점심")
} else if time == 18 {
    print("저녁")
} else {
    print("자유시간")
}


let myColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
let red = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
let blue = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
switch myColor {
case #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1) :
    print("회색")
case blue :
    print("파란색")
case red :
    print("빨간색")
default : print("측정할 수 없는 색상")
}


func getName(name: String?) -> String {
    guard let myName = name else {
        return "이름값이 존재하지않습니다"
    }
    return myName
}
getName(name: "김경록")
getName(name: nil)
