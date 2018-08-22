//
//  Config.swift
//  NebulaLive
//
//  Created by Kyle Thomas on 09/08/2018.
//  Copyright © 2018 Kyle Thomas. All rights reserved.
//

import Foundation
import UIKit

public struct Config {
    internal struct Network {
        internal static let baseUrl = ""
    }
    internal struct Screen {
        internal static let width = UIScreen.main.bounds.width
        internal static let height = UIScreen.main.bounds.height
        internal static let statusBarHeight = UIApplication.shared.statusBarFrame.height
    }
}
