import ArgumentParser
import Foundation
import Spinner

struct Flip: ParsableCommand {
    @Option(name: .shortAndLong, help: "The number of coins to flip.")
    var coins: Int?

    @Flag(name: .shortAndLong, help: "Disable animated and colored output.")
    var disable: Bool = false

    mutating func run() throws {
        for _ in 1 ... (coins ?? 1) {
            let result: String
            if Bool.random() {
                result = "heads"
            } else {
                result = "tails"
            }
            if (disable) {
                print(result)
            } else {
                let spinner = Spinner(.flip, "", color: .yellow)
                spinner.start()
                sleep(1)
                spinner.stop(frame: "•", message: result)
            }
        }
    }
}

Flip.main()
