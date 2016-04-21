protocol 戦車インターフェース {
    var 砲塔 : String { get set }
    var 砲 : String { get set }
    var 履帯 : String { get set}
    func パーツ表示()
}

class 戦車 : 戦車インターフェース {
    let なし = "まだ何もつけていません"
    var 砲塔 = ""
    var 砲 = ""
    var 履帯 = ""
    
    // initメソッドでパーツを取り付けます
    init() {
        self.砲塔 = なし
        self.砲 = なし
        self.履帯 = なし
    }
    
    // パーツを表示させます
    func パーツ表示() {
        print("砲塔は" + self.砲塔)
        print("砲は" + self.砲)
        print("履帯は" + self.履帯)
    }
}


class ３８ｔ : 戦車 {
    override init() {
        super.init()
        self.砲塔 = "Pz.Kpfw 38(t) Ausf. G"
        self.砲 = "4,7 cm Kw.K. 38 (t) L/43"
        self.履帯 = "Pz.Kpfw 38(t) Ausf. E"
    }
}

class ヘッツァー : ３８ｔ {
    override init() {
        super.init()
        self.砲 = "10.5 cm Stu.H. 42 L/28"
        self.砲塔 = "ヘッツァー改装キット"
    }
}


// swiftのsandboxではmainメソッドを実装しなくてもなんと呼べちゃいます
print("--これは戦車クラス---")
戦車.init().パーツ表示()
print("")

print("--これは３８ｔクラス---")
３８ｔ.init().パーツ表示()
print("")

print("--これはヘッツァークラス---")
ヘッツァー.init().パーツ表示()
print("")
