class CatsProfile {
  String name;
  String image;
  String breedName;
  int age;
  double distance;
  String address;
  String ownerName;
  String adoptionReason;
  CatsProfile({
    this.name,
    this.image,
    this.breedName,
    this.age,
    this.distance,
    this.address,
    this.ownerName,
    this.adoptionReason,
  });
}

class CatsProfileList {
  List<CatsProfile> catsProfileList;
  CatsProfileList({
    this.catsProfileList,
  });
}
