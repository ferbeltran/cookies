class Photo {

  String ownerName;
  String title;
  String description;
  String smallImageUrl;
  String mediumImageUrl;
  String largeImageUrl;
  String published;
  int views;

  Photo(this.ownerName, this.title, this.description, this.smallImageUrl, this.mediumImageUrl, this.largeImageUrl, this.published, this.views);

  Photo.fromMap(Map<String, dynamic> map) {
    ownerName = map['ownername'];
    title = map['title'];
    description = map['description'];
    smallImageUrl = map['url_sq'];
    mediumImageUrl = map['url_m'];
    largeImageUrl = map['url_o'];
    published = map['published'];
    views = map['views'];
  }
  
}
