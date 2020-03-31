import Cocoa

//1. Описать несколько структур – любой легковой автомобиль и любой грузовик.
//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.
enum engine: String {
    case on = "Работает"
    case off = "Не работает"
}


enum windows: String {
    case close = "закрыты"
    case open = "открыты"
}

enum actionWindow {
    case open
    case close
}
enum transmissionType {
    case auto(type:String)
    case manual(type:String)
}

enum vehicleType {
    case car(type: String)
    case track(type: String)
}

enum body {
    case emptyBody(empty: String)
    case fullBody(full: String)
    case volume(kg: Double)
}


struct passangerCar {
    var carType: vehicleType
    var brand: String
    var year: Int
    var engine: engine
    var windows: windows
    var transmition: transmissionType
    var body: body
    
    mutating func actEngine(act: engine){
        switch act {
        case .on:
            print(act.rawValue)
            self.engine = .on
        case .off:
            print(act.rawValue)
            self.engine = .off
        }
    }
    mutating func actWindows(act: windows){
        switch act {
        case .open:
            print(act.rawValue)
            self.windows = .open
        case .close:
            print(act.rawValue)
            self.windows = .close
        }
    }
    func desc(){
        print("Автомобиль \(brand), тип авто: \(carType) , \(year) год выпуска, коробка: \(transmition) двигатель \(engine.rawValue), окна: \(windows.rawValue), кузов \(body)")
    }
    
}

struct truckCar {
    var carType: vehicleType
    var brand: String
    var year: Int
    var engine: engine
    var windows: windows
    var transmition: transmissionType
    var body: body
    
    mutating func actEngine(act: engine){
        switch act {
        case .on:
            print(act.rawValue)
            self.engine = .on
        case .off:
            print(act.rawValue)
            self.engine = .off
        }
    }
    mutating func actWindows(act: windows){
        switch act {
        case .open:
            print(act.rawValue)
            self.windows = .open
        case .close:
            print(act.rawValue)
            self.windows = .close
        }
    }
    func desc(){
        print("Автомобиль \(brand), тип авто: \(carType) , \(year) год выпуска, коробка: \(transmition) двигатель \(engine.rawValue), окна: \(windows.rawValue), кузов \(body)")
    }
    
}


var car1 = passangerCar(carType: .car(type: "легковой"), brand: "Volvo", year: 2003, engine: .on, windows: .close, transmition: .auto(type: "АКПП"), body: .emptyBody(empty: "багажник пустой"))

var car2 = truckCar(carType: .track(type: "грузовой"), brand: "Scania", year: 2015, engine: .off, windows: .open, transmition: .manual(type: "МКПП"), body: .fullBody(full: "кузов полный"))


car1.brand
car1.carType
car1.transmition
car1.actEngine(act: .off)
car1.actWindows(act: .open)
car1.desc()

car2.brand
car2.carType
car2.transmition
car2.actEngine(act: .on)
car2.actWindows(act: .close)
car2.desc()
