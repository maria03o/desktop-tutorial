class Guide {
  final String guideEmail;
  final String guidePhoneNumber;
  final String password;
  final String guideFirstName;
  final String guideLastName;
  final Uri guideWebsite;
  final Uri guideLocation;
  final String guideLicenses;
  final String guideProfilePicture;

  Guide({
    required this.guideEmail,
    required this.guidePhoneNumber,
    required this.password,
    required this.guideFirstName,
    required this.guideLastName,
    required this.guideWebsite,
    required this.guideLocation,
    required this.guideLicenses,
    required this.guideProfilePicture,
  });

  Map<String, dynamic> toJson() {
    return {
      'guide_email': guideEmail,
      'guide_phone_number': guidePhoneNumber,
      'password': password,
      'guide_first_name': guideFirstName,
      'guide_last_name': guideLastName,
      'guide_website': guideWebsite.toString(),
      'guide_location': guideLocation.toString(),
      'guide_licenses': guideLicenses,
      'guide_profile_picture': guideProfilePicture,
    };
  }
}
