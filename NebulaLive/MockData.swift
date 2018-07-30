//
//  MockData.swift
//  NebulaLive
//
//  Created by Kyle Thomas on 30/07/2018.
//  Copyright © 2018 Kyle Thomas. All rights reserved.
//

import Foundation

public struct MockData {
    internal static let Artists: [ArtistModel] = [
        ArtistModel(name: "The Hunters", desc: "Indie Folk band hailing from Leeds", image: "artist1", rating: 2, distance: 2),
        ArtistModel(name: "Mardis Gras", desc: "Django Reinhardt influenced Gyspy jazz", image: "artist2", rating: 2, distance: 2),
        ArtistModel(name: "Luke Johnson", desc: "Rising Hip-Hop talent akin to the likes of", image: "artist3", rating: 2, distance: 2),
        ArtistModel(name: "The Last Puppets", desc: "Alternate Rock band from Manchester, UK", image: "artist4", rating: 3, distance: 3)
        ]
    
    internal static let Venues: [VenueModel] = [
        VenueModel(name: "Night and Day", desc: "The home of live music", image: "artist1", rating: 2, distance: 2),
        VenueModel(name: "Dive, NQ", desc: "Food, Drink and Music", image: "artist2", rating: 2, distance: 2),
        VenueModel(name: "Guilty", desc: "Live music and beer", image: "artist3", rating: 2, distance: 2),
        VenueModel(name: "Cooper Hall", desc: "Underground beer hall", image: "artist4", rating: 3, distance: 3)
    ]
}
