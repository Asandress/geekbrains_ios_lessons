import Cocoa


enum DoorState {
    case open, close
}
enum Transmission {
    case manual, auto
}
enum Engine {
    case on, off
}
class Car {
    let color: String
    let transmission: Transmission
    var engine: Engine
    var km: Double
    var doorState: DoorState
    init(color: String,  transmission: Transmission, engine: Engine, km: Double, doorState: DoorState) {
        self.color = color
        self.transmission = transmission
        self.engine = engine
        self.km = km
        self.doorState = doorState
    }
}
var car1 = Car(color: "yellow",  transmission: .auto, engine: .on, km: 0.0, doorState: .close)
var car2 = Car(color: "white",  transmission: .auto, engine: .off, km: 120.0, doorState: .close)
print(car1.color, car1.km,", ", car2.km)//0.0, 120.0
car2 = car1
print(car1.km,", ", car2.km)//0.0, 0.0
car1.km = 500.0
print(car1.km,", ", car2.km)//500.0, 500.0
