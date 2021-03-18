//
//  Created by Jesse Squires
//  https://www.jessesquires.com
//
//  Documentation
//  https://jessesquires.github.io/Foil
//
//  GitHub
//  https://github.com/jessesquires/Foil
//
//  Copyright © 2021-present Jesse Squires
//

import Foil
import Foundation

extension UserDefaults {
    static func testSuite(name: String = UUID().uuidString) -> UserDefaults {
        UserDefaults().reset(name: name)
        return UserDefaults(suiteName: name)!
    }

    func reset(name: String = Bundle.main.bundleIdentifier!) {
        self.removePersistentDomain(forName: name)
    }
}

final class TestSettings {

    private static var store = UserDefaults.testSuite()

    // TODO
}
