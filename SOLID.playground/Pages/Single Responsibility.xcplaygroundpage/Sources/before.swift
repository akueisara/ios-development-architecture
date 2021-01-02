//: The Single Responsibility Principle
/*:
Each type should have one well-defined responsibility
*/
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
