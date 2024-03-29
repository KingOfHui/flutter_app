// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AppContent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppContent _$AppContentFromJson(Map<String, dynamic> json) {
  return AppContent(
      json['isGameCenterEnabled'] as bool,
      (json['screenshotUrls'] as List)?.map((e) => e as String)?.toList(),
      (json['ipadScreenshotUrls'] as List)?.map((e) => e as String)?.toList(),
      (json['appletvScreenshotUrls'] as List)
          ?.map((e) => e as String)
          ?.toList(),
      json['artworkUrl60'] as String,
      json['artworkUrl512'] as String,
      json['artworkUrl100'] as String,
      json['artistViewUrl'] as String,
      (json['supportedDevices'] as List)?.map((e) => e as String)?.toList(),
      json['kind'] as String,
      (json['features'] as List)?.map((e) => e as String)?.toList(),
      (json['advisories'] as List)?.map((e) => e as String)?.toList(),
      json['contentAdvisoryRating'] as String,
      json['trackViewUrl'] as String,
      json['trackCensoredName'] as String,
      (json['languageCodesISO2A'] as List)?.map((e) => e as String)?.toList(),
      json['fileSizeBytes'] as String,
      json['trackContentRating'] as String,
      json['formattedPrice'] as String,
      json['sellerName'] as String,
      json['currentVersionReleaseDate'] as String,
      json['isVppDeviceBasedLicensingEnabled'] as bool,
      json['trackId'] as num,
      json['trackName'] as String,
      json['releaseNotes'] as String,
      json['releaseDate'] as String,
      json['primaryGenreId'] as num,
      json['currency'] as String,
      json['wrapperType'] as String,
      json['version'] as String,
      json['minimumOsVersion'] as String,
      json['primaryGenreName'] as String,
      (json['genreIds'] as List)?.map((e) => e as String)?.toList(),
      json['description'] as String,
      json['artistId'] as num,
      json['artistName'] as String,
      (json['genres'] as List)?.map((e) => e as String)?.toList(),
      (json['price'] as num)?.toDouble(),
      json['bundleId'] as String,
      (json['averageUserRating'] as num)?.toDouble(),
      json['userRatingCount'] as num);
}

Map<String, dynamic> _$AppContentToJson(AppContent instance) =>
    <String, dynamic>{
      'isGameCenterEnabled': instance.isGameCenterEnabled,
      'screenshotUrls': instance.screenshotUrls,
      'ipadScreenshotUrls': instance.ipadScreenshotUrls,
      'appletvScreenshotUrls': instance.appletvScreenshotUrls,
      'artworkUrl60': instance.artworkUrl60,
      'artworkUrl512': instance.artworkUrl512,
      'artworkUrl100': instance.artworkUrl100,
      'artistViewUrl': instance.artistViewUrl,
      'supportedDevices': instance.supportedDevices,
      'kind': instance.kind,
      'features': instance.features,
      'advisories': instance.advisories,
      'contentAdvisoryRating': instance.contentAdvisoryRating,
      'trackViewUrl': instance.trackViewUrl,
      'trackCensoredName': instance.trackCensoredName,
      'languageCodesISO2A': instance.languageCodesISO2A,
      'fileSizeBytes': instance.fileSizeBytes,
      'trackContentRating': instance.trackContentRating,
      'formattedPrice': instance.formattedPrice,
      'sellerName': instance.sellerName,
      'currentVersionReleaseDate': instance.currentVersionReleaseDate,
      'isVppDeviceBasedLicensingEnabled':
      instance.isVppDeviceBasedLicensingEnabled,
      'trackId': instance.trackId,
      'trackName': instance.trackName,
      'releaseNotes': instance.releaseNotes,
      'releaseDate': instance.releaseDate,
      'primaryGenreId': instance.primaryGenreId,
      'currency': instance.currency,
      'wrapperType': instance.wrapperType,
      'version': instance.version,
      'minimumOsVersion': instance.minimumOsVersion,
      'primaryGenreName': instance.primaryGenreName,
      'genreIds': instance.genreIds,
      'description': instance.description,
      'artistId': instance.artistId,
      'artistName': instance.artistName,
      'genres': instance.genres,
      'price': instance.price,
      'bundleId': instance.bundleId,
      'averageUserRating': instance.averageUserRating,
      'userRatingCount': instance.userRatingCount
    };