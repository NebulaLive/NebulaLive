//
//  VenueModel.swift
//  NebulaLive
//
//  Created by Kyle Thomas on 30/07/2018.
//  Copyright © 2018 Kyle Thomas. All rights reserved.
//

import Foundation
import Realm
import RealmSwift

class VenueModel: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var desc: String = ""
    @objc dynamic var image: String = ""
    @objc dynamic var rating: Int = 0
    @objc dynamic var distance: Int = 0
    
    init(name: String, desc: String, image: String, rating: Int, distance: Int) {
        self.name = name
        self.desc = desc
        self.image = image
        self.rating = rating
        self.distance = distance
        super.init()
    }
    
    
    required init() {
        fatalError("init() has not been implemented")
    }
    
    required init(realm: RLMRealm, schema: RLMObjectSchema) {
        fatalError("init(realm:schema:) has not been implemented")
    }
    
    required init(value: Any, schema: RLMSchema) {
        fatalError("init(value:schema:) has not been implemented")
    }
}
