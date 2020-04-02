import UIKit

/*
 1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
 2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
 3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
 4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
 5. Создать несколько объектов каждого класса. Применить к ним различные действия.
 6. Вывести значения свойств экземпляров в консоль.
 */

class Car {
    
    enum DoorState {
        case open, close
    }
    enum Transmission {
        case manual, auto
    }
    enum Engine {
        case on, off
    }
    
    let color: String
    let transmission: Transmission
    var engine: Engine
    var maxspeed: Double
    var doorState: DoorState
    init(color: String,  transmission: Transmission, engine: Engine, maxspeed: Double, doorState: DoorState) {
        self.color = color
        self.transmission = transmission
        self.engine = engine
        self.maxspeed = maxspeed
        self.doorState = doorState
    }
    
}
class TrunkCar: Car {
    var trunk: String
    init(color: String,  transmission: Transmission, engine: Engine, maxspeed: Double, doorState: DoorState, trunk: String){
        self.trunk = trunk
        super.init(color: color,  transmission: transmission, engine: engine, maxspeed: maxspeed, doorState: doorState)
    }
    
}
class SportCar: Car {
    var nitro: String
    var tuning: String
    init(color: String,  transmission: Transmission, engine: Engine, maxspeed: Double, doorState: DoorState, nitro: String, tuning: String){
        self.nitro = nitro
        self.tuning = tuning
        super.init(color: color,  transmission: transmission, engine: engine, maxspeed: maxspeed, doorState: doorState)
    }
}
var car = Car(color: "белый",  transmission: .auto, engine: .on, maxspeed: 120.0, doorState: .close)
var trunkCar = TrunkCar(color: "черный",  transmission: .manual, engine: .off, maxspeed: 80.0, doorState: .close, trunk: "есть кузов")
var sportCar = SportCar(color: "желтый",  transmission: .auto, engine: .off, maxspeed: 320.0, doorState: .close, nitro: "Супер нитро", tuning: "Brabus")

print("Обычная машина, цвет \(car.color), коробка \(car.transmission), двигатель \(car.engine) , максимальная скорость \(car.maxspeed) , двери \(car.doorState)")

print("Грузовая машина, цвет \(trunkCar.color), коробка \(trunkCar.transmission), двигатель \(trunkCar.engine) , максимальная скорость \(trunkCar.maxspeed) , двери \(trunkCar.doorState), \(trunkCar.trunk)")

print("Спортивная машина, цвет \(sportCar.color), коробка \(sportCar.transmission), двигатель \(sportCar.engine) , максимальная скорость \(sportCar.maxspeed) , двери \(sportCar.doorState), \(sportCar.nitro), тюнинг от \(sportCar.tuning)")


