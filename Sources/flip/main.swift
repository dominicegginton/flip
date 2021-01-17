import ArgumentParser

struct Flip: ParsableCommand {

    @Option(name: .shortAndLong, help: "The number of coins to repeat flip.")
    var coins: Int?

    mutating func run() throws {
        let count = coins ?? 1

        for _ in 1...count {
            if Bool.random() {
                print("heads")
            } else {
                print("tails")
            }
        }
    }
}

Flip.main()
