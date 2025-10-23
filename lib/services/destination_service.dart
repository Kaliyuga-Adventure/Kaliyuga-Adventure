import 'package:myapp/models/destination.dart';

class DestinationService {
  List<Destination> getDestinations() {
    return [
      Destination(
        imageUrl:
            'https://images.unsplash.com/photo-1522093007474-d86e9bf7ba6f?q=80&w=2564&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        city: 'Paris',
      ),
      Destination(
        imageUrl:
            'https://images.unsplash.com/photo-1542051841857-5f90071e7989?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        city: 'Tokyo',
      ),
      Destination(
        imageUrl:
            'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        city: 'London',
      ),
      Destination(
        imageUrl:
            'https://images.unsplash.com/photo-1506973035872-93c52e4a8337?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        city: 'Bali',
      ),
    ];
  }
}
