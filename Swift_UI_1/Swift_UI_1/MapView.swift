//
//  MapView.swift
//  Swift_UI_1
//
//  Created by Riti Sinha on 01/08/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State var region = MKCoordinateRegion(
        center:  CLLocationCoordinate2D(
          latitude: 35.689506,
          longitude: 139.691700
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 0.01,
            longitudeDelta: 0.001
       )
    )
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
