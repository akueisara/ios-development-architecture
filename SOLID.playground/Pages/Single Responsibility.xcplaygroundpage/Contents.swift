//: The Single Responsibility Principle
import Foundation

class CurrencyManager {
    func fetchRates(for sourceCurrency: String,
                    to targetCurrency: String,
                    completion: (Error?, Double) -> Void) {
        //...
    }
    
    func save(rate: Double,
              for sourceCurrency: String,
              to targetCurrency: String) {
        //...
    }

    func loadRate(for sourceCurrency: String,
                  to targetCurrency: String) -> Double? {
        //...
        return 0
    }

    func convert(amount: Double,
                 from sourceCurrency: String,
                 to targetCurrency: String) -> Double {
        //...
        return 0
    }
}

// Refactor to three different classes
class CurrencyConverter {
    func convert(amount: Double,
                 from sourceCurrency: String,
                 to targetCurrency: String) -> Double {
        //...
        return 0
    }
}

class NetworkController {
    func fetchRates(for sourceCurrency: String, to targetCurrency: String, completion: (Error?, Double) -> Void) {
        //...
    }
}

class LocalPersistence {
    func save<T>(value: T, for key: String /*sourceCurrency: String, to targetCurrency: String*/) {
        //...
    }
}

//: [Next](@next)
