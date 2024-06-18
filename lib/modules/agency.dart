

// agency.dart
class Agency {
  final String agencyName;
  final String agencyEmail;
  final String password;
  final String agencyPhoneNumber;
  final Uri agencyWebsite;
  final int numberOfEmployees;
  final Uri agencyLocation;
  final String agencyLicenses;
  final String agencyProfilePicture;

  Agency({
    required this.agencyName,
    required this.agencyEmail,
    required this.password,
    required this.agencyPhoneNumber,
    required this.agencyWebsite,
    required this.numberOfEmployees,
    required this.agencyLocation,
    required this.agencyLicenses,
    required this.agencyProfilePicture,
  });

  Map<String, dynamic> toJson() {
    return {
      'agency_name': agencyName,
      'agency_email': agencyEmail,
      'password': password,
      'agency_phone_number': agencyPhoneNumber,
      'agency_website': agencyWebsite.toString(),
      'number_of_employees': numberOfEmployees,
      'agency_location': agencyLocation.toString(),
      'agency_licenses': agencyLicenses,
      'agency_profile_picture': agencyProfilePicture,
    };
  }
}

// guide.dart
