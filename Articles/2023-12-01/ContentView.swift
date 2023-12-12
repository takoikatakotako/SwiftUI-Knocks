import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        Map(
            initialPosition:
                MapCameraPosition.region(
                    MKCoordinateRegion(
                        center: CLLocationCoordinate2D(latitude: 35.7005, longitude: 139.7726),
                        latitudinalMeters: 300,
                        longitudinalMeters: 300
                    )
                )
        )
    }
}

#Preview {
    ContentView()
}
