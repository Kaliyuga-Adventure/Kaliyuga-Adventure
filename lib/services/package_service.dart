import 'package:myapp/models/package.dart';

class PackageService {
  List<Package> getPackages() {
    return [
      Package(
        imageUrl:
            'https://images.unsplash.com/photo-1573843981267-be1999ff37cd?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Maldives Getaway',
        description: '7 days, All-inclusive',
        price: '\$1,200',
      ),
      Package(
        imageUrl:
            'https://images.unsplash.com/photo-1528159339929-fb2f1d9530b3?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Italian Dreams',
        description: '10-day tour',
        price: '\$2,500',
      ),
      Package(
        imageUrl:
            'https://images.unsplash.com/photo-1562462277-6838d1797824?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Greek Isles Adventure',
        description: '14 days, Island hopping',
        price: '\$3,000',
      ),
    ];
  }
}
