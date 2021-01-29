import ArgumentParser
import Spinner
import Foundation

struct Flip: ParsableCommand {
    @Option(name: .shortAndLong, help: "The number of coins to flip.")
    var coins: Int?

    @Flag(name: .shortAndLong, help: "Animated output")
    var animation: Bool = false

    mutating func run() throws {
        for _ in 1 ... (coins ?? 1) {
            let spinner = Spinner(.flip, "")
            if animation {
                spinner.start()
                sleep(1)
            }
            if Bool.random() {
                spinner.stop(finalFrame: "•", text: "heads")
            } else {
                spinner.stop(finalFrame: "•", text: "tails")
            }
        }
    }
}

Flip.main()
