import 'dart:convert';
import 'dart:typed_data';

Instagram instagramFromJson(Uint8List str) => Instagram.fromMap(json.decode(utf8.decode(str)));

String instagramToJson(Instagram data) => json.encode(data.toMap());

class Instagram {
  final Config config;
  final String countryCode;
  final String languageCode;
  final String locale;
  final EntryData entryData;
  final String hostname;
  final bool isWhitelistedCrawlBot;
  final String deploymentStage;
  final String platform;
  final String nonce;
  final double midPct;
  final ZeroData zeroData;
  final int cacheSchemaVersion;
  final ServerChecks serverChecks;
  final Map<String, bool> knobx;
  final ToCache toCache;
  final String deviceId;
  final Encryption encryption;
  final String rolloutHash;
  final String bundleVariant;
  final bool isCanary;

  Instagram({
    this.config,
    this.countryCode,
    this.languageCode,
    this.locale,
    this.entryData,
    this.hostname,
    this.isWhitelistedCrawlBot,
    this.deploymentStage,
    this.platform,
    this.nonce,
    this.midPct,
    this.zeroData,
    this.cacheSchemaVersion,
    this.serverChecks,
    this.knobx,
    this.toCache,
    this.deviceId,
    this.encryption,
    this.rolloutHash,
    this.bundleVariant,
    this.isCanary,
  });

  Instagram copyWith({
    Config config,
    String countryCode,
    String languageCode,
    String locale,
    EntryData entryData,
    String hostname,
    bool isWhitelistedCrawlBot,
    String deploymentStage,
    String platform,
    String nonce,
    double midPct,
    ZeroData zeroData,
    int cacheSchemaVersion,
    ServerChecks serverChecks,
    Map<String, bool> knobx,
    ToCache toCache,
    String deviceId,
    Encryption encryption,
    String rolloutHash,
    String bundleVariant,
    bool isCanary,
  }) =>
      Instagram(
        config: config ?? this.config,
        countryCode: countryCode ?? this.countryCode,
        languageCode: languageCode ?? this.languageCode,
        locale: locale ?? this.locale,
        entryData: entryData ?? this.entryData,
        hostname: hostname ?? this.hostname,
        isWhitelistedCrawlBot: isWhitelistedCrawlBot ?? this.isWhitelistedCrawlBot,
        deploymentStage: deploymentStage ?? this.deploymentStage,
        platform: platform ?? this.platform,
        nonce: nonce ?? this.nonce,
        midPct: midPct ?? this.midPct,
        zeroData: zeroData ?? this.zeroData,
        cacheSchemaVersion: cacheSchemaVersion ?? this.cacheSchemaVersion,
        serverChecks: serverChecks ?? this.serverChecks,
        knobx: knobx ?? this.knobx,
        toCache: toCache ?? this.toCache,
        deviceId: deviceId ?? this.deviceId,
        encryption: encryption ?? this.encryption,
        rolloutHash: rolloutHash ?? this.rolloutHash,
        bundleVariant: bundleVariant ?? this.bundleVariant,
        isCanary: isCanary ?? this.isCanary,
      );

  factory Instagram.fromMap(Map<String, dynamic> json) => Instagram(
        config: json["config"] == null ? null : Config.fromMap(json["config"]),
        countryCode: json["country_code"] == null ? null : json["country_code"],
        languageCode: json["language_code"] == null ? null : json["language_code"],
        locale: json["locale"] == null ? null : json["locale"],
        entryData: json["entry_data"] == null ? null : EntryData.fromMap(json["entry_data"]),
        hostname: json["hostname"] == null ? null : json["hostname"],
        isWhitelistedCrawlBot: json["is_whitelisted_crawl_bot"] == null ? null : json["is_whitelisted_crawl_bot"],
        deploymentStage: json["deployment_stage"] == null ? null : json["deployment_stage"],
        platform: json["platform"] == null ? null : json["platform"],
        nonce: json["nonce"] == null ? null : json["nonce"],
        midPct: json["mid_pct"] == null ? null : json["mid_pct"].toDouble(),
        zeroData: json["zero_data"] == null ? null : ZeroData.fromMap(json["zero_data"]),
        cacheSchemaVersion: json["cache_schema_version"] == null ? null : json["cache_schema_version"],
        serverChecks: json["server_checks"] == null ? null : ServerChecks.fromMap(json["server_checks"]),
        knobx: json["knobx"] == null ? null : Map.from(json["knobx"]).map((k, v) => MapEntry<String, bool>(k, v)),
        toCache: json["to_cache"] == null ? null : ToCache.fromMap(json["to_cache"]),
        deviceId: json["device_id"] == null ? null : json["device_id"],
        encryption: json["encryption"] == null ? null : Encryption.fromMap(json["encryption"]),
        rolloutHash: json["rollout_hash"] == null ? null : json["rollout_hash"],
        bundleVariant: json["bundle_variant"] == null ? null : json["bundle_variant"],
        isCanary: json["is_canary"] == null ? null : json["is_canary"],
      );

  Map<String, dynamic> toMap() => {
        "config": config == null ? null : config.toMap(),
        "country_code": countryCode == null ? null : countryCode,
        "language_code": languageCode == null ? null : languageCode,
        "locale": locale == null ? null : locale,
        "entry_data": entryData == null ? null : entryData.toMap(),
        "hostname": hostname == null ? null : hostname,
        "is_whitelisted_crawl_bot": isWhitelistedCrawlBot == null ? null : isWhitelistedCrawlBot,
        "deployment_stage": deploymentStage == null ? null : deploymentStage,
        "platform": platform == null ? null : platform,
        "nonce": nonce == null ? null : nonce,
        "mid_pct": midPct == null ? null : midPct,
        "zero_data": zeroData == null ? null : zeroData.toMap(),
        "cache_schema_version": cacheSchemaVersion == null ? null : cacheSchemaVersion,
        "server_checks": serverChecks == null ? null : serverChecks.toMap(),
        "knobx": knobx == null ? null : Map.from(knobx).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "to_cache": toCache == null ? null : toCache.toMap(),
        "device_id": deviceId == null ? null : deviceId,
        "encryption": encryption == null ? null : encryption.toMap(),
        "rollout_hash": rolloutHash == null ? null : rolloutHash,
        "bundle_variant": bundleVariant == null ? null : bundleVariant,
        "is_canary": isCanary == null ? null : isCanary,
      };
}

class Config {
  final String csrfToken;
  final Viewer viewer;
  final String viewerId;

  Config({
    this.csrfToken,
    this.viewer,
    this.viewerId,
  });

  Config copyWith({
    String csrfToken,
    Viewer viewer,
    String viewerId,
  }) =>
      Config(
        csrfToken: csrfToken ?? this.csrfToken,
        viewer: viewer ?? this.viewer,
        viewerId: viewerId ?? this.viewerId,
      );

  factory Config.fromMap(Map<String, dynamic> json) => Config(
        csrfToken: json["csrf_token"] == null ? null : json["csrf_token"],
        viewer: json["viewer"] == null ? null : Viewer.fromMap(json["viewer"]),
        viewerId: json["viewerId"] == null ? null : json["viewerId"],
      );

  Map<String, dynamic> toMap() => {
        "csrf_token": csrfToken == null ? null : csrfToken,
        "viewer": viewer == null ? null : viewer.toMap(),
        "viewerId": viewerId == null ? null : viewerId,
      };
}

class Viewer {
  final String biography;
  final dynamic externalUrl;
  final String fullName;
  final bool hasPhoneNumber;
  final bool hasProfilePic;
  final bool hasTabbedInbox;
  final String id;
  final bool isJoinedRecently;
  final bool isPrivate;
  final String profilePicUrl;
  final String profilePicUrlHd;
  final String username;
  final String badgeCount;

  Viewer({
    this.biography,
    this.externalUrl,
    this.fullName,
    this.hasPhoneNumber,
    this.hasProfilePic,
    this.hasTabbedInbox,
    this.id,
    this.isJoinedRecently,
    this.isPrivate,
    this.profilePicUrl,
    this.profilePicUrlHd,
    this.username,
    this.badgeCount,
  });

  Viewer copyWith({
    String biography,
    dynamic externalUrl,
    String fullName,
    bool hasPhoneNumber,
    bool hasProfilePic,
    bool hasTabbedInbox,
    String id,
    bool isJoinedRecently,
    bool isPrivate,
    String profilePicUrl,
    String profilePicUrlHd,
    String username,
    String badgeCount,
  }) =>
      Viewer(
        biography: biography ?? this.biography,
        externalUrl: externalUrl ?? this.externalUrl,
        fullName: fullName ?? this.fullName,
        hasPhoneNumber: hasPhoneNumber ?? this.hasPhoneNumber,
        hasProfilePic: hasProfilePic ?? this.hasProfilePic,
        hasTabbedInbox: hasTabbedInbox ?? this.hasTabbedInbox,
        id: id ?? this.id,
        isJoinedRecently: isJoinedRecently ?? this.isJoinedRecently,
        isPrivate: isPrivate ?? this.isPrivate,
        profilePicUrl: profilePicUrl ?? this.profilePicUrl,
        profilePicUrlHd: profilePicUrlHd ?? this.profilePicUrlHd,
        username: username ?? this.username,
        badgeCount: badgeCount ?? this.badgeCount,
      );

  factory Viewer.fromMap(Map<String, dynamic> json) => Viewer(
        biography: json["biography"] == null ? null : json["biography"],
        externalUrl: json["external_url"],
        fullName: json["full_name"] == null ? null : json["full_name"],
        hasPhoneNumber: json["has_phone_number"] == null ? null : json["has_phone_number"],
        hasProfilePic: json["has_profile_pic"] == null ? null : json["has_profile_pic"],
        hasTabbedInbox: json["has_tabbed_inbox"] == null ? null : json["has_tabbed_inbox"],
        id: json["id"] == null ? null : json["id"],
        isJoinedRecently: json["is_joined_recently"] == null ? null : json["is_joined_recently"],
        isPrivate: json["is_private"] == null ? null : json["is_private"],
        profilePicUrl: json["profile_pic_url"] == null ? null : json["profile_pic_url"],
        profilePicUrlHd: json["profile_pic_url_hd"] == null ? null : json["profile_pic_url_hd"],
        username: json["username"] == null ? null : json["username"],
        badgeCount: json["badge_count"] == null ? null : json["badge_count"],
      );

  Map<String, dynamic> toMap() => {
        "biography": biography == null ? null : biography,
        "external_url": externalUrl,
        "full_name": fullName == null ? null : fullName,
        "has_phone_number": hasPhoneNumber == null ? null : hasPhoneNumber,
        "has_profile_pic": hasProfilePic == null ? null : hasProfilePic,
        "has_tabbed_inbox": hasTabbedInbox == null ? null : hasTabbedInbox,
        "id": id == null ? null : id,
        "is_joined_recently": isJoinedRecently == null ? null : isJoinedRecently,
        "is_private": isPrivate == null ? null : isPrivate,
        "profile_pic_url": profilePicUrl == null ? null : profilePicUrl,
        "profile_pic_url_hd": profilePicUrlHd == null ? null : profilePicUrlHd,
        "username": username == null ? null : username,
        "badge_count": badgeCount == null ? null : badgeCount,
      };
}

class Encryption {
  final String keyId;
  final String publicKey;

  Encryption({
    this.keyId,
    this.publicKey,
  });

  Encryption copyWith({
    String keyId,
    String publicKey,
  }) =>
      Encryption(
        keyId: keyId ?? this.keyId,
        publicKey: publicKey ?? this.publicKey,
      );

  factory Encryption.fromMap(Map<String, dynamic> json) => Encryption(
        keyId: json["key_id"] == null ? null : json["key_id"],
        publicKey: json["public_key"] == null ? null : json["public_key"],
      );

  Map<String, dynamic> toMap() => {
        "key_id": keyId == null ? null : keyId,
        "public_key": publicKey == null ? null : publicKey,
      };
}

class EntryData {
  final List<ProfilePage> profilePage;

  EntryData({
    this.profilePage,
  });

  EntryData copyWith({
    List<ProfilePage> profilePage,
  }) =>
      EntryData(
        profilePage: profilePage ?? this.profilePage,
      );

  factory EntryData.fromMap(Map<String, dynamic> json) => EntryData(
        profilePage: json["ProfilePage"] == null
            ? null
            : List<ProfilePage>.from(json["ProfilePage"].map((x) => ProfilePage.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "ProfilePage": profilePage == null ? null : List<dynamic>.from(profilePage.map((x) => x.toMap())),
      };
}

class ProfilePage {
  final String loggingPageId;
  final bool showSuggestedProfiles;
  final bool showFollowDialog;
  final Graphql graphql;
  final dynamic toastContentOnLoad;

  ProfilePage({
    this.loggingPageId,
    this.showSuggestedProfiles,
    this.showFollowDialog,
    this.graphql,
    this.toastContentOnLoad,
  });

  ProfilePage copyWith({
    String loggingPageId,
    bool showSuggestedProfiles,
    bool showFollowDialog,
    Graphql graphql,
    dynamic toastContentOnLoad,
  }) =>
      ProfilePage(
        loggingPageId: loggingPageId ?? this.loggingPageId,
        showSuggestedProfiles: showSuggestedProfiles ?? this.showSuggestedProfiles,
        showFollowDialog: showFollowDialog ?? this.showFollowDialog,
        graphql: graphql ?? this.graphql,
        toastContentOnLoad: toastContentOnLoad ?? this.toastContentOnLoad,
      );

  factory ProfilePage.fromMap(Map<String, dynamic> json) => ProfilePage(
        loggingPageId: json["logging_page_id"] == null ? null : json["logging_page_id"],
        showSuggestedProfiles: json["show_suggested_profiles"] == null ? null : json["show_suggested_profiles"],
        showFollowDialog: json["show_follow_dialog"] == null ? null : json["show_follow_dialog"],
        graphql: json["graphql"] == null ? null : Graphql.fromMap(json["graphql"]),
        toastContentOnLoad: json["toast_content_on_load"],
      );

  Map<String, dynamic> toMap() => {
        "logging_page_id": loggingPageId == null ? null : loggingPageId,
        "show_suggested_profiles": showSuggestedProfiles == null ? null : showSuggestedProfiles,
        "show_follow_dialog": showFollowDialog == null ? null : showFollowDialog,
        "graphql": graphql == null ? null : graphql.toMap(),
        "toast_content_on_load": toastContentOnLoad,
      };
}

class Graphql {
  final User user;

  Graphql({
    this.user,
  });

  Graphql copyWith({
    User user,
  }) =>
      Graphql(
        user: user ?? this.user,
      );

  factory Graphql.fromMap(Map<String, dynamic> json) => Graphql(
        user: json["user"] == null ? null : User.fromMap(json["user"]),
      );

  Map<String, dynamic> toMap() => {
        "user": user == null ? null : user.toMap(),
      };
}

class User {
  final String biography;
  final bool blockedByViewer;
  final bool restrictedByViewer;
  final bool countryBlock;
  final dynamic externalUrl;
  final dynamic externalUrlLinkshimmed;
  final EdgeFollowClass edgeFollowedBy;
  final bool followedByViewer;
  final EdgeFollowClass edgeFollow;
  final bool followsViewer;
  final String fullName;
  final bool hasArEffects;
  final bool hasChannel;
  final bool hasBlockedViewer;
  final int highlightReelCount;
  final bool hasRequestedViewer;
  final String id;
  final bool isBusinessAccount;
  final bool isJoinedRecently;
  final dynamic businessCategoryName;
  final dynamic categoryId;
  final dynamic overallCategoryName;
  final bool isPrivate;
  final bool isVerified;
  final EdgeMutualFollowedBy edgeMutualFollowedBy;
  final String profilePicUrl;
  final String profilePicUrlHd;
  final bool requestedByViewer;
  final String username;
  final dynamic connectedFbPage;
  final EdgeFelixVideoTimelineClass edgeFelixVideoTimeline;
  final EdgeFelixVideoTimelineClass edgeOwnerToTimelineMedia;
  final EdgeFelixVideoTimelineClass edgeSavedMedia;
  final EdgeFelixVideoTimelineClass edgeMediaCollections;

  User({
    this.biography,
    this.blockedByViewer,
    this.restrictedByViewer,
    this.countryBlock,
    this.externalUrl,
    this.externalUrlLinkshimmed,
    this.edgeFollowedBy,
    this.followedByViewer,
    this.edgeFollow,
    this.followsViewer,
    this.fullName,
    this.hasArEffects,
    this.hasChannel,
    this.hasBlockedViewer,
    this.highlightReelCount,
    this.hasRequestedViewer,
    this.id,
    this.isBusinessAccount,
    this.isJoinedRecently,
    this.businessCategoryName,
    this.categoryId,
    this.overallCategoryName,
    this.isPrivate,
    this.isVerified,
    this.edgeMutualFollowedBy,
    this.profilePicUrl,
    this.profilePicUrlHd,
    this.requestedByViewer,
    this.username,
    this.connectedFbPage,
    this.edgeFelixVideoTimeline,
    this.edgeOwnerToTimelineMedia,
    this.edgeSavedMedia,
    this.edgeMediaCollections,
  });

  User copyWith({
    String biography,
    bool blockedByViewer,
    bool restrictedByViewer,
    bool countryBlock,
    dynamic externalUrl,
    dynamic externalUrlLinkshimmed,
    EdgeFollowClass edgeFollowedBy,
    bool followedByViewer,
    EdgeFollowClass edgeFollow,
    bool followsViewer,
    String fullName,
    bool hasArEffects,
    bool hasChannel,
    bool hasBlockedViewer,
    int highlightReelCount,
    bool hasRequestedViewer,
    String id,
    bool isBusinessAccount,
    bool isJoinedRecently,
    dynamic businessCategoryName,
    dynamic categoryId,
    dynamic overallCategoryName,
    bool isPrivate,
    bool isVerified,
    EdgeMutualFollowedBy edgeMutualFollowedBy,
    String profilePicUrl,
    String profilePicUrlHd,
    bool requestedByViewer,
    String username,
    dynamic connectedFbPage,
    EdgeFelixVideoTimelineClass edgeFelixVideoTimeline,
    EdgeFelixVideoTimelineClass edgeOwnerToTimelineMedia,
    EdgeFelixVideoTimelineClass edgeSavedMedia,
    EdgeFelixVideoTimelineClass edgeMediaCollections,
  }) =>
      User(
        biography: biography ?? this.biography,
        blockedByViewer: blockedByViewer ?? this.blockedByViewer,
        restrictedByViewer: restrictedByViewer ?? this.restrictedByViewer,
        countryBlock: countryBlock ?? this.countryBlock,
        externalUrl: externalUrl ?? this.externalUrl,
        externalUrlLinkshimmed: externalUrlLinkshimmed ?? this.externalUrlLinkshimmed,
        edgeFollowedBy: edgeFollowedBy ?? this.edgeFollowedBy,
        followedByViewer: followedByViewer ?? this.followedByViewer,
        edgeFollow: edgeFollow ?? this.edgeFollow,
        followsViewer: followsViewer ?? this.followsViewer,
        fullName: fullName ?? this.fullName,
        hasArEffects: hasArEffects ?? this.hasArEffects,
        hasChannel: hasChannel ?? this.hasChannel,
        hasBlockedViewer: hasBlockedViewer ?? this.hasBlockedViewer,
        highlightReelCount: highlightReelCount ?? this.highlightReelCount,
        hasRequestedViewer: hasRequestedViewer ?? this.hasRequestedViewer,
        id: id ?? this.id,
        isBusinessAccount: isBusinessAccount ?? this.isBusinessAccount,
        isJoinedRecently: isJoinedRecently ?? this.isJoinedRecently,
        businessCategoryName: businessCategoryName ?? this.businessCategoryName,
        categoryId: categoryId ?? this.categoryId,
        overallCategoryName: overallCategoryName ?? this.overallCategoryName,
        isPrivate: isPrivate ?? this.isPrivate,
        isVerified: isVerified ?? this.isVerified,
        edgeMutualFollowedBy: edgeMutualFollowedBy ?? this.edgeMutualFollowedBy,
        profilePicUrl: profilePicUrl ?? this.profilePicUrl,
        profilePicUrlHd: profilePicUrlHd ?? this.profilePicUrlHd,
        requestedByViewer: requestedByViewer ?? this.requestedByViewer,
        username: username ?? this.username,
        connectedFbPage: connectedFbPage ?? this.connectedFbPage,
        edgeFelixVideoTimeline: edgeFelixVideoTimeline ?? this.edgeFelixVideoTimeline,
        edgeOwnerToTimelineMedia: edgeOwnerToTimelineMedia ?? this.edgeOwnerToTimelineMedia,
        edgeSavedMedia: edgeSavedMedia ?? this.edgeSavedMedia,
        edgeMediaCollections: edgeMediaCollections ?? this.edgeMediaCollections,
      );

  factory User.fromMap(Map<String, dynamic> json) => User(
        biography: json["biography"] == null ? null : json["biography"],
        blockedByViewer: json["blocked_by_viewer"] == null ? null : json["blocked_by_viewer"],
        restrictedByViewer: json["restricted_by_viewer"] == null ? null : json["restricted_by_viewer"],
        countryBlock: json["country_block"] == null ? null : json["country_block"],
        externalUrl: json["external_url"],
        externalUrlLinkshimmed: json["external_url_linkshimmed"],
        edgeFollowedBy: json["edge_followed_by"] == null ? null : EdgeFollowClass.fromMap(json["edge_followed_by"]),
        followedByViewer: json["followed_by_viewer"] == null ? null : json["followed_by_viewer"],
        edgeFollow: json["edge_follow"] == null ? null : EdgeFollowClass.fromMap(json["edge_follow"]),
        followsViewer: json["follows_viewer"] == null ? null : json["follows_viewer"],
        fullName: json["full_name"] == null ? null : json["full_name"],
        hasArEffects: json["has_ar_effects"] == null ? null : json["has_ar_effects"],
        hasChannel: json["has_channel"] == null ? null : json["has_channel"],
        hasBlockedViewer: json["has_blocked_viewer"] == null ? null : json["has_blocked_viewer"],
        highlightReelCount: json["highlight_reel_count"] == null ? null : json["highlight_reel_count"],
        hasRequestedViewer: json["has_requested_viewer"] == null ? null : json["has_requested_viewer"],
        id: json["id"] == null ? null : json["id"],
        isBusinessAccount: json["is_business_account"] == null ? null : json["is_business_account"],
        isJoinedRecently: json["is_joined_recently"] == null ? null : json["is_joined_recently"],
        businessCategoryName: json["business_category_name"],
        categoryId: json["category_id"],
        overallCategoryName: json["overall_category_name"],
        isPrivate: json["is_private"] == null ? null : json["is_private"],
        isVerified: json["is_verified"] == null ? null : json["is_verified"],
        edgeMutualFollowedBy: json["edge_mutual_followed_by"] == null
            ? null
            : EdgeMutualFollowedBy.fromMap(json["edge_mutual_followed_by"]),
        profilePicUrl: json["profile_pic_url"] == null ? null : json["profile_pic_url"],
        profilePicUrlHd: json["profile_pic_url_hd"] == null ? null : json["profile_pic_url_hd"],
        requestedByViewer: json["requested_by_viewer"] == null ? null : json["requested_by_viewer"],
        username: json["username"] == null ? null : json["username"],
        connectedFbPage: json["connected_fb_page"],
        edgeFelixVideoTimeline: json["edge_felix_video_timeline"] == null
            ? null
            : EdgeFelixVideoTimelineClass.fromMap(json["edge_felix_video_timeline"]),
        edgeOwnerToTimelineMedia: json["edge_owner_to_timeline_media"] == null
            ? null
            : EdgeFelixVideoTimelineClass.fromMap(json["edge_owner_to_timeline_media"]),
        edgeSavedMedia:
            json["edge_saved_media"] == null ? null : EdgeFelixVideoTimelineClass.fromMap(json["edge_saved_media"]),
        edgeMediaCollections: json["edge_media_collections"] == null
            ? null
            : EdgeFelixVideoTimelineClass.fromMap(json["edge_media_collections"]),
      );

  Map<String, dynamic> toMap() => {
        "biography": biography == null ? null : biography,
        "blocked_by_viewer": blockedByViewer == null ? null : blockedByViewer,
        "restricted_by_viewer": restrictedByViewer == null ? null : restrictedByViewer,
        "country_block": countryBlock == null ? null : countryBlock,
        "external_url": externalUrl,
        "external_url_linkshimmed": externalUrlLinkshimmed,
        "edge_followed_by": edgeFollowedBy == null ? null : edgeFollowedBy.toMap(),
        "followed_by_viewer": followedByViewer == null ? null : followedByViewer,
        "edge_follow": edgeFollow == null ? null : edgeFollow.toMap(),
        "follows_viewer": followsViewer == null ? null : followsViewer,
        "full_name": fullName == null ? null : fullName,
        "has_ar_effects": hasArEffects == null ? null : hasArEffects,
        "has_channel": hasChannel == null ? null : hasChannel,
        "has_blocked_viewer": hasBlockedViewer == null ? null : hasBlockedViewer,
        "highlight_reel_count": highlightReelCount == null ? null : highlightReelCount,
        "has_requested_viewer": hasRequestedViewer == null ? null : hasRequestedViewer,
        "id": id == null ? null : id,
        "is_business_account": isBusinessAccount == null ? null : isBusinessAccount,
        "is_joined_recently": isJoinedRecently == null ? null : isJoinedRecently,
        "business_category_name": businessCategoryName,
        "category_id": categoryId,
        "overall_category_name": overallCategoryName,
        "is_private": isPrivate == null ? null : isPrivate,
        "is_verified": isVerified == null ? null : isVerified,
        "edge_mutual_followed_by": edgeMutualFollowedBy == null ? null : edgeMutualFollowedBy.toMap(),
        "profile_pic_url": profilePicUrl == null ? null : profilePicUrl,
        "profile_pic_url_hd": profilePicUrlHd == null ? null : profilePicUrlHd,
        "requested_by_viewer": requestedByViewer == null ? null : requestedByViewer,
        "username": username == null ? null : username,
        "connected_fb_page": connectedFbPage,
        "edge_felix_video_timeline": edgeFelixVideoTimeline == null ? null : edgeFelixVideoTimeline.toMap(),
        "edge_owner_to_timeline_media": edgeOwnerToTimelineMedia == null ? null : edgeOwnerToTimelineMedia.toMap(),
        "edge_saved_media": edgeSavedMedia == null ? null : edgeSavedMedia.toMap(),
        "edge_media_collections": edgeMediaCollections == null ? null : edgeMediaCollections.toMap(),
      };
}

class EdgeFelixVideoTimelineClass {
  final int count;
  final PageInfo pageInfo;
  final List<EdgeFelixVideoTimelineEdge> edges;

  EdgeFelixVideoTimelineClass({
    this.count,
    this.pageInfo,
    this.edges,
  });

  EdgeFelixVideoTimelineClass copyWith({
    int count,
    PageInfo pageInfo,
    List<EdgeFelixVideoTimelineEdge> edges,
  }) =>
      EdgeFelixVideoTimelineClass(
        count: count ?? this.count,
        pageInfo: pageInfo ?? this.pageInfo,
        edges: edges ?? this.edges,
      );

  factory EdgeFelixVideoTimelineClass.fromMap(Map<String, dynamic> json) => EdgeFelixVideoTimelineClass(
        count: json["count"] == null ? null : json["count"],
        pageInfo: json["page_info"] == null ? null : PageInfo.fromMap(json["page_info"]),
        edges: json["edges"] == null
            ? null
            : List<EdgeFelixVideoTimelineEdge>.from(json["edges"].map((x) => EdgeFelixVideoTimelineEdge.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "count": count == null ? null : count,
        "page_info": pageInfo == null ? null : pageInfo.toMap(),
        "edges": edges == null ? null : List<dynamic>.from(edges.map((x) => x.toMap())),
      };
}

class EdgeFelixVideoTimelineEdge {
  final PurpleNode node;

  EdgeFelixVideoTimelineEdge({
    this.node,
  });

  EdgeFelixVideoTimelineEdge copyWith({
    PurpleNode node,
  }) =>
      EdgeFelixVideoTimelineEdge(
        node: node ?? this.node,
      );

  factory EdgeFelixVideoTimelineEdge.fromMap(Map<String, dynamic> json) => EdgeFelixVideoTimelineEdge(
        node: json["node"] == null ? null : PurpleNode.fromMap(json["node"]),
      );

  Map<String, dynamic> toMap() => {
        "node": node == null ? null : node.toMap(),
      };
}

class PurpleNode {
  final Typename typename;
  final String id;
  final EdgeMediaToCaption edgeMediaToCaption;
  final String shortcode;
  final EdgeFollowClass edgeMediaToComment;
  final bool commentsDisabled;
  final int takenAtTimestamp;
  final Dimensions dimensions;
  final String displayUrl;
  final EdgeFollowClass edgeLikedBy;
  final EdgeFollowClass edgeMediaPreviewLike;
  final Location location;
  final dynamic gatingInfo;
  final dynamic factCheckOverallRating;
  final dynamic factCheckInformation;
  final String mediaPreview;
  final Owner owner;
  final String thumbnailSrc;
  final List<ThumbnailResource> thumbnailResources;
  final bool isVideo;
  final String accessibilityCaption;

  PurpleNode({
    this.typename,
    this.id,
    this.edgeMediaToCaption,
    this.shortcode,
    this.edgeMediaToComment,
    this.commentsDisabled,
    this.takenAtTimestamp,
    this.dimensions,
    this.displayUrl,
    this.edgeLikedBy,
    this.edgeMediaPreviewLike,
    this.location,
    this.gatingInfo,
    this.factCheckOverallRating,
    this.factCheckInformation,
    this.mediaPreview,
    this.owner,
    this.thumbnailSrc,
    this.thumbnailResources,
    this.isVideo,
    this.accessibilityCaption,
  });

  PurpleNode copyWith({
    Typename typename,
    String id,
    EdgeMediaToCaption edgeMediaToCaption,
    String shortcode,
    EdgeFollowClass edgeMediaToComment,
    bool commentsDisabled,
    int takenAtTimestamp,
    Dimensions dimensions,
    String displayUrl,
    EdgeFollowClass edgeLikedBy,
    EdgeFollowClass edgeMediaPreviewLike,
    Location location,
    dynamic gatingInfo,
    dynamic factCheckOverallRating,
    dynamic factCheckInformation,
    String mediaPreview,
    Owner owner,
    String thumbnailSrc,
    List<ThumbnailResource> thumbnailResources,
    bool isVideo,
    String accessibilityCaption,
  }) =>
      PurpleNode(
        typename: typename ?? this.typename,
        id: id ?? this.id,
        edgeMediaToCaption: edgeMediaToCaption ?? this.edgeMediaToCaption,
        shortcode: shortcode ?? this.shortcode,
        edgeMediaToComment: edgeMediaToComment ?? this.edgeMediaToComment,
        commentsDisabled: commentsDisabled ?? this.commentsDisabled,
        takenAtTimestamp: takenAtTimestamp ?? this.takenAtTimestamp,
        dimensions: dimensions ?? this.dimensions,
        displayUrl: displayUrl ?? this.displayUrl,
        edgeLikedBy: edgeLikedBy ?? this.edgeLikedBy,
        edgeMediaPreviewLike: edgeMediaPreviewLike ?? this.edgeMediaPreviewLike,
        location: location ?? this.location,
        gatingInfo: gatingInfo ?? this.gatingInfo,
        factCheckOverallRating: factCheckOverallRating ?? this.factCheckOverallRating,
        factCheckInformation: factCheckInformation ?? this.factCheckInformation,
        mediaPreview: mediaPreview ?? this.mediaPreview,
        owner: owner ?? this.owner,
        thumbnailSrc: thumbnailSrc ?? this.thumbnailSrc,
        thumbnailResources: thumbnailResources ?? this.thumbnailResources,
        isVideo: isVideo ?? this.isVideo,
        accessibilityCaption: accessibilityCaption ?? this.accessibilityCaption,
      );

  factory PurpleNode.fromMap(Map<String, dynamic> json) => PurpleNode(
        typename: json["__typename"] == null ? null : typenameValues.map[json["__typename"]],
        id: json["id"] == null ? null : json["id"],
        edgeMediaToCaption:
            json["edge_media_to_caption"] == null ? null : EdgeMediaToCaption.fromMap(json["edge_media_to_caption"]),
        shortcode: json["shortcode"] == null ? null : json["shortcode"],
        edgeMediaToComment:
            json["edge_media_to_comment"] == null ? null : EdgeFollowClass.fromMap(json["edge_media_to_comment"]),
        commentsDisabled: json["comments_disabled"] == null ? null : json["comments_disabled"],
        takenAtTimestamp: json["taken_at_timestamp"] == null ? null : json["taken_at_timestamp"],
        dimensions: json["dimensions"] == null ? null : Dimensions.fromMap(json["dimensions"]),
        displayUrl: json["display_url"] == null ? null : json["display_url"],
        edgeLikedBy: json["edge_liked_by"] == null ? null : EdgeFollowClass.fromMap(json["edge_liked_by"]),
        edgeMediaPreviewLike:
            json["edge_media_preview_like"] == null ? null : EdgeFollowClass.fromMap(json["edge_media_preview_like"]),
        location: json["location"] == null ? null : Location.fromMap(json["location"]),
        gatingInfo: json["gating_info"],
        factCheckOverallRating: json["fact_check_overall_rating"],
        factCheckInformation: json["fact_check_information"],
        mediaPreview: json["media_preview"] == null ? null : json["media_preview"],
        owner: json["owner"] == null ? null : Owner.fromMap(json["owner"]),
        thumbnailSrc: json["thumbnail_src"] == null ? null : json["thumbnail_src"],
        thumbnailResources: json["thumbnail_resources"] == null
            ? null
            : List<ThumbnailResource>.from(json["thumbnail_resources"].map((x) => ThumbnailResource.fromMap(x))),
        isVideo: json["is_video"] == null ? null : json["is_video"],
        accessibilityCaption: json["accessibility_caption"] == null ? null : json["accessibility_caption"],
      );

  Map<String, dynamic> toMap() => {
        "__typename": typename == null ? null : typenameValues.reverse[typename],
        "id": id == null ? null : id,
        "edge_media_to_caption": edgeMediaToCaption == null ? null : edgeMediaToCaption.toMap(),
        "shortcode": shortcode == null ? null : shortcode,
        "edge_media_to_comment": edgeMediaToComment == null ? null : edgeMediaToComment.toMap(),
        "comments_disabled": commentsDisabled == null ? null : commentsDisabled,
        "taken_at_timestamp": takenAtTimestamp == null ? null : takenAtTimestamp,
        "dimensions": dimensions == null ? null : dimensions.toMap(),
        "display_url": displayUrl == null ? null : displayUrl,
        "edge_liked_by": edgeLikedBy == null ? null : edgeLikedBy.toMap(),
        "edge_media_preview_like": edgeMediaPreviewLike == null ? null : edgeMediaPreviewLike.toMap(),
        "location": location == null ? null : location.toMap(),
        "gating_info": gatingInfo,
        "fact_check_overall_rating": factCheckOverallRating,
        "fact_check_information": factCheckInformation,
        "media_preview": mediaPreview == null ? null : mediaPreview,
        "owner": owner == null ? null : owner.toMap(),
        "thumbnail_src": thumbnailSrc == null ? null : thumbnailSrc,
        "thumbnail_resources":
            thumbnailResources == null ? null : List<dynamic>.from(thumbnailResources.map((x) => x.toMap())),
        "is_video": isVideo == null ? null : isVideo,
        "accessibility_caption": accessibilityCaption == null ? null : accessibilityCaption,
      };
}

class Dimensions {
  final int height;
  final int width;

  Dimensions({
    this.height,
    this.width,
  });

  Dimensions copyWith({
    int height,
    int width,
  }) =>
      Dimensions(
        height: height ?? this.height,
        width: width ?? this.width,
      );

  factory Dimensions.fromMap(Map<String, dynamic> json) => Dimensions(
        height: json["height"] == null ? null : json["height"],
        width: json["width"] == null ? null : json["width"],
      );

  Map<String, dynamic> toMap() => {
        "height": height == null ? null : height,
        "width": width == null ? null : width,
      };
}

class EdgeFollowClass {
  final int count;

  EdgeFollowClass({
    this.count,
  });

  EdgeFollowClass copyWith({
    int count,
  }) =>
      EdgeFollowClass(
        count: count ?? this.count,
      );

  factory EdgeFollowClass.fromMap(Map<String, dynamic> json) => EdgeFollowClass(
        count: json["count"] == null ? null : json["count"],
      );

  Map<String, dynamic> toMap() => {
        "count": count == null ? null : count,
      };
}

class EdgeMediaToCaption {
  final List<EdgeMediaToCaptionEdge> edges;

  EdgeMediaToCaption({
    this.edges,
  });

  EdgeMediaToCaption copyWith({
    List<EdgeMediaToCaptionEdge> edges,
  }) =>
      EdgeMediaToCaption(
        edges: edges ?? this.edges,
      );

  factory EdgeMediaToCaption.fromMap(Map<String, dynamic> json) => EdgeMediaToCaption(
        edges: json["edges"] == null
            ? null
            : List<EdgeMediaToCaptionEdge>.from(json["edges"].map((x) => EdgeMediaToCaptionEdge.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "edges": edges == null ? null : List<dynamic>.from(edges.map((x) => x.toMap())),
      };
}

class EdgeMediaToCaptionEdge {
  final FluffyNode node;

  EdgeMediaToCaptionEdge({
    this.node,
  });

  EdgeMediaToCaptionEdge copyWith({
    FluffyNode node,
  }) =>
      EdgeMediaToCaptionEdge(
        node: node ?? this.node,
      );

  factory EdgeMediaToCaptionEdge.fromMap(Map<String, dynamic> json) => EdgeMediaToCaptionEdge(
        node: json["node"] == null ? null : FluffyNode.fromMap(json["node"]),
      );

  Map<String, dynamic> toMap() => {
        "node": node == null ? null : node.toMap(),
      };
}

class FluffyNode {
  final String text;

  FluffyNode({
    this.text,
  });

  FluffyNode copyWith({
    String text,
  }) =>
      FluffyNode(
        text: text ?? this.text,
      );

  factory FluffyNode.fromMap(Map<String, dynamic> json) => FluffyNode(
        text: json["text"] == null ? null : json["text"],
      );

  Map<String, dynamic> toMap() => {
        "text": text == null ? null : text,
      };
}

class Location {
  final String id;
  final bool hasPublicPage;
  final String name;
  final String slug;

  Location({
    this.id,
    this.hasPublicPage,
    this.name,
    this.slug,
  });

  Location copyWith({
    String id,
    bool hasPublicPage,
    String name,
    String slug,
  }) =>
      Location(
        id: id ?? this.id,
        hasPublicPage: hasPublicPage ?? this.hasPublicPage,
        name: name ?? this.name,
        slug: slug ?? this.slug,
      );

  factory Location.fromMap(Map<String, dynamic> json) => Location(
        id: json["id"] == null ? null : json["id"],
        hasPublicPage: json["has_public_page"] == null ? null : json["has_public_page"],
        name: json["name"] == null ? null : json["name"],
        slug: json["slug"] == null ? null : json["slug"],
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "has_public_page": hasPublicPage == null ? null : hasPublicPage,
        "name": name == null ? null : name,
        "slug": slug == null ? null : slug,
      };
}

class Owner {
  final String id;
  final String username;

  Owner({
    this.id,
    this.username,
  });

  Owner copyWith({
    String id,
    String username,
  }) =>
      Owner(
        id: id ?? this.id,
        username: username ?? this.username,
      );

  factory Owner.fromMap(Map<String, dynamic> json) => Owner(
        id: json["id"] == null ? null : json["id"],
        username: json["username"] == null ? null : json["username"],
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "username": username == null ? null : username,
      };
}

class ThumbnailResource {
  final String src;
  final int configWidth;
  final int configHeight;

  ThumbnailResource({
    this.src,
    this.configWidth,
    this.configHeight,
  });

  ThumbnailResource copyWith({
    String src,
    int configWidth,
    int configHeight,
  }) =>
      ThumbnailResource(
        src: src ?? this.src,
        configWidth: configWidth ?? this.configWidth,
        configHeight: configHeight ?? this.configHeight,
      );

  factory ThumbnailResource.fromMap(Map<String, dynamic> json) => ThumbnailResource(
        src: json["src"] == null ? null : json["src"],
        configWidth: json["config_width"] == null ? null : json["config_width"],
        configHeight: json["config_height"] == null ? null : json["config_height"],
      );

  Map<String, dynamic> toMap() => {
        "src": src == null ? null : src,
        "config_width": configWidth == null ? null : configWidth,
        "config_height": configHeight == null ? null : configHeight,
      };
}

enum Typename { GRAPH_IMAGE }

final typenameValues = EnumValues({"GraphImage": Typename.GRAPH_IMAGE});

class PageInfo {
  final bool hasNextPage;
  final String endCursor;

  PageInfo({
    this.hasNextPage,
    this.endCursor,
  });

  PageInfo copyWith({
    bool hasNextPage,
    String endCursor,
  }) =>
      PageInfo(
        hasNextPage: hasNextPage ?? this.hasNextPage,
        endCursor: endCursor ?? this.endCursor,
      );

  factory PageInfo.fromMap(Map<String, dynamic> json) => PageInfo(
        hasNextPage: json["has_next_page"] == null ? null : json["has_next_page"],
        endCursor: json["end_cursor"] == null ? null : json["end_cursor"],
      );

  Map<String, dynamic> toMap() => {
        "has_next_page": hasNextPage == null ? null : hasNextPage,
        "end_cursor": endCursor == null ? null : endCursor,
      };
}

class EdgeMutualFollowedBy {
  final int count;
  final List<EdgeMutualFollowedByEdge> edges;

  EdgeMutualFollowedBy({
    this.count,
    this.edges,
  });

  EdgeMutualFollowedBy copyWith({
    int count,
    List<EdgeMutualFollowedByEdge> edges,
  }) =>
      EdgeMutualFollowedBy(
        count: count ?? this.count,
        edges: edges ?? this.edges,
      );

  factory EdgeMutualFollowedBy.fromMap(Map<String, dynamic> json) => EdgeMutualFollowedBy(
        count: json["count"] == null ? null : json["count"],
        edges: json["edges"] == null
            ? null
            : List<EdgeMutualFollowedByEdge>.from(json["edges"].map((x) => EdgeMutualFollowedByEdge.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "count": count == null ? null : count,
        "edges": edges == null ? null : List<dynamic>.from(edges.map((x) => x.toMap())),
      };
}

class EdgeMutualFollowedByEdge {
  final TentacledNode node;

  EdgeMutualFollowedByEdge({
    this.node,
  });

  EdgeMutualFollowedByEdge copyWith({
    TentacledNode node,
  }) =>
      EdgeMutualFollowedByEdge(
        node: node ?? this.node,
      );

  factory EdgeMutualFollowedByEdge.fromMap(Map<String, dynamic> json) => EdgeMutualFollowedByEdge(
        node: json["node"] == null ? null : TentacledNode.fromMap(json["node"]),
      );

  Map<String, dynamic> toMap() => {
        "node": node == null ? null : node.toMap(),
      };
}

class TentacledNode {
  final String username;

  TentacledNode({
    this.username,
  });

  TentacledNode copyWith({
    String username,
  }) =>
      TentacledNode(
        username: username ?? this.username,
      );

  factory TentacledNode.fromMap(Map<String, dynamic> json) => TentacledNode(
        username: json["username"] == null ? null : json["username"],
      );

  Map<String, dynamic> toMap() => {
        "username": username == null ? null : username,
      };
}

class ServerChecks {
  final bool hfe;

  ServerChecks({
    this.hfe,
  });

  ServerChecks copyWith({
    bool hfe,
  }) =>
      ServerChecks(
        hfe: hfe ?? this.hfe,
      );

  factory ServerChecks.fromMap(Map<String, dynamic> json) => ServerChecks(
        hfe: json["hfe"] == null ? null : json["hfe"],
      );

  Map<String, dynamic> toMap() => {
        "hfe": hfe == null ? null : hfe,
      };
}

class ToCache {
  final Map<String, bool> gatekeepers;
  final Qe qe;
  final bool probablyHasApp;
  final bool cb;

  ToCache({
    this.gatekeepers,
    this.qe,
    this.probablyHasApp,
    this.cb,
  });

  ToCache copyWith({
    Map<String, bool> gatekeepers,
    Qe qe,
    bool probablyHasApp,
    bool cb,
  }) =>
      ToCache(
        gatekeepers: gatekeepers ?? this.gatekeepers,
        qe: qe ?? this.qe,
        probablyHasApp: probablyHasApp ?? this.probablyHasApp,
        cb: cb ?? this.cb,
      );

  factory ToCache.fromMap(Map<String, dynamic> json) => ToCache(
        gatekeepers: json["gatekeepers"] == null
            ? null
            : Map.from(json["gatekeepers"]).map((k, v) => MapEntry<String, bool>(k, v)),
        qe: json["qe"] == null ? null : Qe.fromMap(json["qe"]),
        probablyHasApp: json["probably_has_app"] == null ? null : json["probably_has_app"],
        cb: json["cb"] == null ? null : json["cb"],
      );

  Map<String, dynamic> toMap() => {
        "gatekeepers":
            gatekeepers == null ? null : Map.from(gatekeepers).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "qe": qe == null ? null : qe.toMap(),
        "probably_has_app": probablyHasApp == null ? null : probablyHasApp,
        "cb": cb == null ? null : cb,
      };
}

class Qe {
  final AppUpsell appUpsell;
  final AppUpsell iglAppUpsell;
  final AppUpsell notif;
  final AppUpsell onetaplogin;
  final MultiregIter multiregIter;
  final FelixClearFbCookie felixClearFbCookie;
  final FelixCreationDurationLimits felixCreationDurationLimits;
  final FelixCreationFbCrossposting felixCreationFbCrossposting;
  final FelixCreationFbCrosspostingV2 felixCreationFbCrosspostingV2;
  final FelixCreationValidation felixCreationValidation;
  final AppUpsell mwebTopicalExplore;
  final PostOptions postOptions;
  final AppUpsell iglscioi;
  final AppUpsell stickerTray;
  final AppUpsell webSentry;
  final The0 the0;
  final The13 the2;
  final The13 the4;
  final The17 the5;
  final The0 the6;
  final The10 the10;
  final The12 the12;
  final The13 the13;
  final The13 the16;
  final The17 the17;
  final The13 the19;
  final The10 the21;
  final The22 the22;
  final The0 the23;
  final The100 the25;
  final The26 the26;
  final The13 the28;
  final The100 the29;
  final The13 the30;
  final The100 the31;
  final The100 the33;
  final The13 the34;
  final The13 the35;
  final The0 the36;
  final The13 the37;
  final The0 the39;
  final The41 the41;
  final The13 the42;
  final The0 the43;
  final The44 the44;
  final The45 the45;
  final The13 the46;
  final The0 the47;
  final The13 the49;
  final The13 the50;
  final The12 the53;
  final The13 the54;
  final The13 the55;
  final The0 the56;
  final The22 the58;
  final The13 the59;
  final The13 the62;
  final The13 the64;
  final The100 the65;
  final The13 the66;
  final The0 the67;
  final The13 the68;
  final The13 the69;
  final The70 the70;
  final The71 the71;
  final The0 the72;
  final The13 the73;
  final The0 the74;
  final The13 the75;
  final The13 the76;
  final The0 the77;
  final The0 the78;
  final The0 the80;
  final The13 the81;
  final The0 the82;
  final The0 the84;
  final The85 the85;
  final The13 the86;
  final The13 the87;
  final The13 the89;
  final The13 the90;
  final The13 the91;
  final The12 the92;
  final The13 the93;
  final The13 the95;
  final The13 the96;
  final The100 the97;
  final The0 the98;
  final The13 the99;
  final The100 the100;
  final The0 the101;

  Qe({
    this.appUpsell,
    this.iglAppUpsell,
    this.notif,
    this.onetaplogin,
    this.multiregIter,
    this.felixClearFbCookie,
    this.felixCreationDurationLimits,
    this.felixCreationFbCrossposting,
    this.felixCreationFbCrosspostingV2,
    this.felixCreationValidation,
    this.mwebTopicalExplore,
    this.postOptions,
    this.iglscioi,
    this.stickerTray,
    this.webSentry,
    this.the0,
    this.the2,
    this.the4,
    this.the5,
    this.the6,
    this.the10,
    this.the12,
    this.the13,
    this.the16,
    this.the17,
    this.the19,
    this.the21,
    this.the22,
    this.the23,
    this.the25,
    this.the26,
    this.the28,
    this.the29,
    this.the30,
    this.the31,
    this.the33,
    this.the34,
    this.the35,
    this.the36,
    this.the37,
    this.the39,
    this.the41,
    this.the42,
    this.the43,
    this.the44,
    this.the45,
    this.the46,
    this.the47,
    this.the49,
    this.the50,
    this.the53,
    this.the54,
    this.the55,
    this.the56,
    this.the58,
    this.the59,
    this.the62,
    this.the64,
    this.the65,
    this.the66,
    this.the67,
    this.the68,
    this.the69,
    this.the70,
    this.the71,
    this.the72,
    this.the73,
    this.the74,
    this.the75,
    this.the76,
    this.the77,
    this.the78,
    this.the80,
    this.the81,
    this.the82,
    this.the84,
    this.the85,
    this.the86,
    this.the87,
    this.the89,
    this.the90,
    this.the91,
    this.the92,
    this.the93,
    this.the95,
    this.the96,
    this.the97,
    this.the98,
    this.the99,
    this.the100,
    this.the101,
  });

  Qe copyWith({
    AppUpsell appUpsell,
    AppUpsell iglAppUpsell,
    AppUpsell notif,
    AppUpsell onetaplogin,
    MultiregIter multiregIter,
    FelixClearFbCookie felixClearFbCookie,
    FelixCreationDurationLimits felixCreationDurationLimits,
    FelixCreationFbCrossposting felixCreationFbCrossposting,
    FelixCreationFbCrosspostingV2 felixCreationFbCrosspostingV2,
    FelixCreationValidation felixCreationValidation,
    AppUpsell mwebTopicalExplore,
    PostOptions postOptions,
    AppUpsell iglscioi,
    AppUpsell stickerTray,
    AppUpsell webSentry,
    The0 the0,
    The13 the2,
    The13 the4,
    The17 the5,
    The0 the6,
    The10 the10,
    The12 the12,
    The13 the13,
    The13 the16,
    The17 the17,
    The13 the19,
    The10 the21,
    The22 the22,
    The0 the23,
    The100 the25,
    The26 the26,
    The13 the28,
    The100 the29,
    The13 the30,
    The100 the31,
    The100 the33,
    The13 the34,
    The13 the35,
    The0 the36,
    The13 the37,
    The0 the39,
    The41 the41,
    The13 the42,
    The0 the43,
    The44 the44,
    The45 the45,
    The13 the46,
    The0 the47,
    The13 the49,
    The13 the50,
    The12 the53,
    The13 the54,
    The13 the55,
    The0 the56,
    The22 the58,
    The13 the59,
    The13 the62,
    The13 the64,
    The100 the65,
    The13 the66,
    The0 the67,
    The13 the68,
    The13 the69,
    The70 the70,
    The71 the71,
    The0 the72,
    The13 the73,
    The0 the74,
    The13 the75,
    The13 the76,
    The0 the77,
    The0 the78,
    The0 the80,
    The13 the81,
    The0 the82,
    The0 the84,
    The85 the85,
    The13 the86,
    The13 the87,
    The13 the89,
    The13 the90,
    The13 the91,
    The12 the92,
    The13 the93,
    The13 the95,
    The13 the96,
    The100 the97,
    The0 the98,
    The13 the99,
    The100 the100,
    The0 the101,
  }) =>
      Qe(
        appUpsell: appUpsell ?? this.appUpsell,
        iglAppUpsell: iglAppUpsell ?? this.iglAppUpsell,
        notif: notif ?? this.notif,
        onetaplogin: onetaplogin ?? this.onetaplogin,
        multiregIter: multiregIter ?? this.multiregIter,
        felixClearFbCookie: felixClearFbCookie ?? this.felixClearFbCookie,
        felixCreationDurationLimits: felixCreationDurationLimits ?? this.felixCreationDurationLimits,
        felixCreationFbCrossposting: felixCreationFbCrossposting ?? this.felixCreationFbCrossposting,
        felixCreationFbCrosspostingV2: felixCreationFbCrosspostingV2 ?? this.felixCreationFbCrosspostingV2,
        felixCreationValidation: felixCreationValidation ?? this.felixCreationValidation,
        mwebTopicalExplore: mwebTopicalExplore ?? this.mwebTopicalExplore,
        postOptions: postOptions ?? this.postOptions,
        iglscioi: iglscioi ?? this.iglscioi,
        stickerTray: stickerTray ?? this.stickerTray,
        webSentry: webSentry ?? this.webSentry,
        the0: the0 ?? this.the0,
        the2: the2 ?? this.the2,
        the4: the4 ?? this.the4,
        the5: the5 ?? this.the5,
        the6: the6 ?? this.the6,
        the10: the10 ?? this.the10,
        the12: the12 ?? this.the12,
        the13: the13 ?? this.the13,
        the16: the16 ?? this.the16,
        the17: the17 ?? this.the17,
        the19: the19 ?? this.the19,
        the21: the21 ?? this.the21,
        the22: the22 ?? this.the22,
        the23: the23 ?? this.the23,
        the25: the25 ?? this.the25,
        the26: the26 ?? this.the26,
        the28: the28 ?? this.the28,
        the29: the29 ?? this.the29,
        the30: the30 ?? this.the30,
        the31: the31 ?? this.the31,
        the33: the33 ?? this.the33,
        the34: the34 ?? this.the34,
        the35: the35 ?? this.the35,
        the36: the36 ?? this.the36,
        the37: the37 ?? this.the37,
        the39: the39 ?? this.the39,
        the41: the41 ?? this.the41,
        the42: the42 ?? this.the42,
        the43: the43 ?? this.the43,
        the44: the44 ?? this.the44,
        the45: the45 ?? this.the45,
        the46: the46 ?? this.the46,
        the47: the47 ?? this.the47,
        the49: the49 ?? this.the49,
        the50: the50 ?? this.the50,
        the53: the53 ?? this.the53,
        the54: the54 ?? this.the54,
        the55: the55 ?? this.the55,
        the56: the56 ?? this.the56,
        the58: the58 ?? this.the58,
        the59: the59 ?? this.the59,
        the62: the62 ?? this.the62,
        the64: the64 ?? this.the64,
        the65: the65 ?? this.the65,
        the66: the66 ?? this.the66,
        the67: the67 ?? this.the67,
        the68: the68 ?? this.the68,
        the69: the69 ?? this.the69,
        the70: the70 ?? this.the70,
        the71: the71 ?? this.the71,
        the72: the72 ?? this.the72,
        the73: the73 ?? this.the73,
        the74: the74 ?? this.the74,
        the75: the75 ?? this.the75,
        the76: the76 ?? this.the76,
        the77: the77 ?? this.the77,
        the78: the78 ?? this.the78,
        the80: the80 ?? this.the80,
        the81: the81 ?? this.the81,
        the82: the82 ?? this.the82,
        the84: the84 ?? this.the84,
        the85: the85 ?? this.the85,
        the86: the86 ?? this.the86,
        the87: the87 ?? this.the87,
        the89: the89 ?? this.the89,
        the90: the90 ?? this.the90,
        the91: the91 ?? this.the91,
        the92: the92 ?? this.the92,
        the93: the93 ?? this.the93,
        the95: the95 ?? this.the95,
        the96: the96 ?? this.the96,
        the97: the97 ?? this.the97,
        the98: the98 ?? this.the98,
        the99: the99 ?? this.the99,
        the100: the100 ?? this.the100,
        the101: the101 ?? this.the101,
      );

  factory Qe.fromMap(Map<String, dynamic> json) => Qe(
        appUpsell: json["app_upsell"] == null ? null : AppUpsell.fromMap(json["app_upsell"]),
        iglAppUpsell: json["igl_app_upsell"] == null ? null : AppUpsell.fromMap(json["igl_app_upsell"]),
        notif: json["notif"] == null ? null : AppUpsell.fromMap(json["notif"]),
        onetaplogin: json["onetaplogin"] == null ? null : AppUpsell.fromMap(json["onetaplogin"]),
        multiregIter: json["multireg_iter"] == null ? null : MultiregIter.fromMap(json["multireg_iter"]),
        felixClearFbCookie:
            json["felix_clear_fb_cookie"] == null ? null : FelixClearFbCookie.fromMap(json["felix_clear_fb_cookie"]),
        felixCreationDurationLimits: json["felix_creation_duration_limits"] == null
            ? null
            : FelixCreationDurationLimits.fromMap(json["felix_creation_duration_limits"]),
        felixCreationFbCrossposting: json["felix_creation_fb_crossposting"] == null
            ? null
            : FelixCreationFbCrossposting.fromMap(json["felix_creation_fb_crossposting"]),
        felixCreationFbCrosspostingV2: json["felix_creation_fb_crossposting_v2"] == null
            ? null
            : FelixCreationFbCrosspostingV2.fromMap(json["felix_creation_fb_crossposting_v2"]),
        felixCreationValidation: json["felix_creation_validation"] == null
            ? null
            : FelixCreationValidation.fromMap(json["felix_creation_validation"]),
        mwebTopicalExplore:
            json["mweb_topical_explore"] == null ? null : AppUpsell.fromMap(json["mweb_topical_explore"]),
        postOptions: json["post_options"] == null ? null : PostOptions.fromMap(json["post_options"]),
        iglscioi: json["iglscioi"] == null ? null : AppUpsell.fromMap(json["iglscioi"]),
        stickerTray: json["sticker_tray"] == null ? null : AppUpsell.fromMap(json["sticker_tray"]),
        webSentry: json["web_sentry"] == null ? null : AppUpsell.fromMap(json["web_sentry"]),
        the0: json["0"] == null ? null : The0.fromMap(json["0"]),
        the2: json["2"] == null ? null : The13.fromMap(json["2"]),
        the4: json["4"] == null ? null : The13.fromMap(json["4"]),
        the5: json["5"] == null ? null : The17.fromMap(json["5"]),
        the6: json["6"] == null ? null : The0.fromMap(json["6"]),
        the10: json["10"] == null ? null : The10.fromMap(json["10"]),
        the12: json["12"] == null ? null : The12.fromMap(json["12"]),
        the13: json["13"] == null ? null : The13.fromMap(json["13"]),
        the16: json["16"] == null ? null : The13.fromMap(json["16"]),
        the17: json["17"] == null ? null : The17.fromMap(json["17"]),
        the19: json["19"] == null ? null : The13.fromMap(json["19"]),
        the21: json["21"] == null ? null : The10.fromMap(json["21"]),
        the22: json["22"] == null ? null : The22.fromMap(json["22"]),
        the23: json["23"] == null ? null : The0.fromMap(json["23"]),
        the25: json["25"] == null ? null : The100.fromMap(json["25"]),
        the26: json["26"] == null ? null : The26.fromMap(json["26"]),
        the28: json["28"] == null ? null : The13.fromMap(json["28"]),
        the29: json["29"] == null ? null : The100.fromMap(json["29"]),
        the30: json["30"] == null ? null : The13.fromMap(json["30"]),
        the31: json["31"] == null ? null : The100.fromMap(json["31"]),
        the33: json["33"] == null ? null : The100.fromMap(json["33"]),
        the34: json["34"] == null ? null : The13.fromMap(json["34"]),
        the35: json["35"] == null ? null : The13.fromMap(json["35"]),
        the36: json["36"] == null ? null : The0.fromMap(json["36"]),
        the37: json["37"] == null ? null : The13.fromMap(json["37"]),
        the39: json["39"] == null ? null : The0.fromMap(json["39"]),
        the41: json["41"] == null ? null : The41.fromMap(json["41"]),
        the42: json["42"] == null ? null : The13.fromMap(json["42"]),
        the43: json["43"] == null ? null : The0.fromMap(json["43"]),
        the44: json["44"] == null ? null : The44.fromMap(json["44"]),
        the45: json["45"] == null ? null : The45.fromMap(json["45"]),
        the46: json["46"] == null ? null : The13.fromMap(json["46"]),
        the47: json["47"] == null ? null : The0.fromMap(json["47"]),
        the49: json["49"] == null ? null : The13.fromMap(json["49"]),
        the50: json["50"] == null ? null : The13.fromMap(json["50"]),
        the53: json["53"] == null ? null : The12.fromMap(json["53"]),
        the54: json["54"] == null ? null : The13.fromMap(json["54"]),
        the55: json["55"] == null ? null : The13.fromMap(json["55"]),
        the56: json["56"] == null ? null : The0.fromMap(json["56"]),
        the58: json["58"] == null ? null : The22.fromMap(json["58"]),
        the59: json["59"] == null ? null : The13.fromMap(json["59"]),
        the62: json["62"] == null ? null : The13.fromMap(json["62"]),
        the64: json["64"] == null ? null : The13.fromMap(json["64"]),
        the65: json["65"] == null ? null : The100.fromMap(json["65"]),
        the66: json["66"] == null ? null : The13.fromMap(json["66"]),
        the67: json["67"] == null ? null : The0.fromMap(json["67"]),
        the68: json["68"] == null ? null : The13.fromMap(json["68"]),
        the69: json["69"] == null ? null : The13.fromMap(json["69"]),
        the70: json["70"] == null ? null : The70.fromMap(json["70"]),
        the71: json["71"] == null ? null : The71.fromMap(json["71"]),
        the72: json["72"] == null ? null : The0.fromMap(json["72"]),
        the73: json["73"] == null ? null : The13.fromMap(json["73"]),
        the74: json["74"] == null ? null : The0.fromMap(json["74"]),
        the75: json["75"] == null ? null : The13.fromMap(json["75"]),
        the76: json["76"] == null ? null : The13.fromMap(json["76"]),
        the77: json["77"] == null ? null : The0.fromMap(json["77"]),
        the78: json["78"] == null ? null : The0.fromMap(json["78"]),
        the80: json["80"] == null ? null : The0.fromMap(json["80"]),
        the81: json["81"] == null ? null : The13.fromMap(json["81"]),
        the82: json["82"] == null ? null : The0.fromMap(json["82"]),
        the84: json["84"] == null ? null : The0.fromMap(json["84"]),
        the85: json["85"] == null ? null : The85.fromMap(json["85"]),
        the86: json["86"] == null ? null : The13.fromMap(json["86"]),
        the87: json["87"] == null ? null : The13.fromMap(json["87"]),
        the89: json["89"] == null ? null : The13.fromMap(json["89"]),
        the90: json["90"] == null ? null : The13.fromMap(json["90"]),
        the91: json["91"] == null ? null : The13.fromMap(json["91"]),
        the92: json["92"] == null ? null : The12.fromMap(json["92"]),
        the93: json["93"] == null ? null : The13.fromMap(json["93"]),
        the95: json["95"] == null ? null : The13.fromMap(json["95"]),
        the96: json["96"] == null ? null : The13.fromMap(json["96"]),
        the97: json["97"] == null ? null : The100.fromMap(json["97"]),
        the98: json["98"] == null ? null : The0.fromMap(json["98"]),
        the99: json["99"] == null ? null : The13.fromMap(json["99"]),
        the100: json["100"] == null ? null : The100.fromMap(json["100"]),
        the101: json["101"] == null ? null : The0.fromMap(json["101"]),
      );

  Map<String, dynamic> toMap() => {
        "app_upsell": appUpsell == null ? null : appUpsell.toMap(),
        "igl_app_upsell": iglAppUpsell == null ? null : iglAppUpsell.toMap(),
        "notif": notif == null ? null : notif.toMap(),
        "onetaplogin": onetaplogin == null ? null : onetaplogin.toMap(),
        "multireg_iter": multiregIter == null ? null : multiregIter.toMap(),
        "felix_clear_fb_cookie": felixClearFbCookie == null ? null : felixClearFbCookie.toMap(),
        "felix_creation_duration_limits":
            felixCreationDurationLimits == null ? null : felixCreationDurationLimits.toMap(),
        "felix_creation_fb_crossposting":
            felixCreationFbCrossposting == null ? null : felixCreationFbCrossposting.toMap(),
        "felix_creation_fb_crossposting_v2":
            felixCreationFbCrosspostingV2 == null ? null : felixCreationFbCrosspostingV2.toMap(),
        "felix_creation_validation": felixCreationValidation == null ? null : felixCreationValidation.toMap(),
        "mweb_topical_explore": mwebTopicalExplore == null ? null : mwebTopicalExplore.toMap(),
        "post_options": postOptions == null ? null : postOptions.toMap(),
        "iglscioi": iglscioi == null ? null : iglscioi.toMap(),
        "sticker_tray": stickerTray == null ? null : stickerTray.toMap(),
        "web_sentry": webSentry == null ? null : webSentry.toMap(),
        "0": the0 == null ? null : the0.toMap(),
        "2": the2 == null ? null : the2.toMap(),
        "4": the4 == null ? null : the4.toMap(),
        "5": the5 == null ? null : the5.toMap(),
        "6": the6 == null ? null : the6.toMap(),
        "10": the10 == null ? null : the10.toMap(),
        "12": the12 == null ? null : the12.toMap(),
        "13": the13 == null ? null : the13.toMap(),
        "16": the16 == null ? null : the16.toMap(),
        "17": the17 == null ? null : the17.toMap(),
        "19": the19 == null ? null : the19.toMap(),
        "21": the21 == null ? null : the21.toMap(),
        "22": the22 == null ? null : the22.toMap(),
        "23": the23 == null ? null : the23.toMap(),
        "25": the25 == null ? null : the25.toMap(),
        "26": the26 == null ? null : the26.toMap(),
        "28": the28 == null ? null : the28.toMap(),
        "29": the29 == null ? null : the29.toMap(),
        "30": the30 == null ? null : the30.toMap(),
        "31": the31 == null ? null : the31.toMap(),
        "33": the33 == null ? null : the33.toMap(),
        "34": the34 == null ? null : the34.toMap(),
        "35": the35 == null ? null : the35.toMap(),
        "36": the36 == null ? null : the36.toMap(),
        "37": the37 == null ? null : the37.toMap(),
        "39": the39 == null ? null : the39.toMap(),
        "41": the41 == null ? null : the41.toMap(),
        "42": the42 == null ? null : the42.toMap(),
        "43": the43 == null ? null : the43.toMap(),
        "44": the44 == null ? null : the44.toMap(),
        "45": the45 == null ? null : the45.toMap(),
        "46": the46 == null ? null : the46.toMap(),
        "47": the47 == null ? null : the47.toMap(),
        "49": the49 == null ? null : the49.toMap(),
        "50": the50 == null ? null : the50.toMap(),
        "53": the53 == null ? null : the53.toMap(),
        "54": the54 == null ? null : the54.toMap(),
        "55": the55 == null ? null : the55.toMap(),
        "56": the56 == null ? null : the56.toMap(),
        "58": the58 == null ? null : the58.toMap(),
        "59": the59 == null ? null : the59.toMap(),
        "62": the62 == null ? null : the62.toMap(),
        "64": the64 == null ? null : the64.toMap(),
        "65": the65 == null ? null : the65.toMap(),
        "66": the66 == null ? null : the66.toMap(),
        "67": the67 == null ? null : the67.toMap(),
        "68": the68 == null ? null : the68.toMap(),
        "69": the69 == null ? null : the69.toMap(),
        "70": the70 == null ? null : the70.toMap(),
        "71": the71 == null ? null : the71.toMap(),
        "72": the72 == null ? null : the72.toMap(),
        "73": the73 == null ? null : the73.toMap(),
        "74": the74 == null ? null : the74.toMap(),
        "75": the75 == null ? null : the75.toMap(),
        "76": the76 == null ? null : the76.toMap(),
        "77": the77 == null ? null : the77.toMap(),
        "78": the78 == null ? null : the78.toMap(),
        "80": the80 == null ? null : the80.toMap(),
        "81": the81 == null ? null : the81.toMap(),
        "82": the82 == null ? null : the82.toMap(),
        "84": the84 == null ? null : the84.toMap(),
        "85": the85 == null ? null : the85.toMap(),
        "86": the86 == null ? null : the86.toMap(),
        "87": the87 == null ? null : the87.toMap(),
        "89": the89 == null ? null : the89.toMap(),
        "90": the90 == null ? null : the90.toMap(),
        "91": the91 == null ? null : the91.toMap(),
        "92": the92 == null ? null : the92.toMap(),
        "93": the93 == null ? null : the93.toMap(),
        "95": the95 == null ? null : the95.toMap(),
        "96": the96 == null ? null : the96.toMap(),
        "97": the97 == null ? null : the97.toMap(),
        "98": the98 == null ? null : the98.toMap(),
        "99": the99 == null ? null : the99.toMap(),
        "100": the100 == null ? null : the100.toMap(),
        "101": the101 == null ? null : the101.toMap(),
      };
}

class AppUpsell {
  final String g;
  final ZeroData p;

  AppUpsell({
    this.g,
    this.p,
  });

  AppUpsell copyWith({
    String g,
    ZeroData p,
  }) =>
      AppUpsell(
        g: g ?? this.g,
        p: p ?? this.p,
      );

  factory AppUpsell.fromMap(Map<String, dynamic> json) => AppUpsell(
        g: json["g"] == null ? null : json["g"],
        p: json["p"] == null ? null : ZeroData.fromMap(json["p"]),
      );

  Map<String, dynamic> toMap() => {
        "g": g == null ? null : g,
        "p": p == null ? null : p.toMap(),
      };
}

class ZeroData {
  ZeroData();

  ZeroData copyWith() => ZeroData();

  factory ZeroData.fromMap(Map<String, dynamic> json) => ZeroData();

  Map<String, dynamic> toMap() => {};
}

class FelixClearFbCookie {
  final String g;
  final FelixClearFbCookieP p;

  FelixClearFbCookie({
    this.g,
    this.p,
  });

  FelixClearFbCookie copyWith({
    String g,
    FelixClearFbCookieP p,
  }) =>
      FelixClearFbCookie(
        g: g ?? this.g,
        p: p ?? this.p,
      );

  factory FelixClearFbCookie.fromMap(Map<String, dynamic> json) => FelixClearFbCookie(
        g: json["g"] == null ? null : json["g"],
        p: json["p"] == null ? null : FelixClearFbCookieP.fromMap(json["p"]),
      );

  Map<String, dynamic> toMap() => {
        "g": g == null ? null : g,
        "p": p == null ? null : p.toMap(),
      };
}

class FelixClearFbCookieP {
  final String isEnabled;
  final String blacklist;

  FelixClearFbCookieP({
    this.isEnabled,
    this.blacklist,
  });

  FelixClearFbCookieP copyWith({
    String isEnabled,
    String blacklist,
  }) =>
      FelixClearFbCookieP(
        isEnabled: isEnabled ?? this.isEnabled,
        blacklist: blacklist ?? this.blacklist,
      );

  factory FelixClearFbCookieP.fromMap(Map<String, dynamic> json) => FelixClearFbCookieP(
        isEnabled: json["is_enabled"] == null ? null : json["is_enabled"],
        blacklist: json["blacklist"] == null ? null : json["blacklist"],
      );

  Map<String, dynamic> toMap() => {
        "is_enabled": isEnabled == null ? null : isEnabled,
        "blacklist": blacklist == null ? null : blacklist,
      };
}

class FelixCreationDurationLimits {
  final String g;
  final FelixCreationDurationLimitsP p;

  FelixCreationDurationLimits({
    this.g,
    this.p,
  });

  FelixCreationDurationLimits copyWith({
    String g,
    FelixCreationDurationLimitsP p,
  }) =>
      FelixCreationDurationLimits(
        g: g ?? this.g,
        p: p ?? this.p,
      );

  factory FelixCreationDurationLimits.fromMap(Map<String, dynamic> json) => FelixCreationDurationLimits(
        g: json["g"] == null ? null : json["g"],
        p: json["p"] == null ? null : FelixCreationDurationLimitsP.fromMap(json["p"]),
      );

  Map<String, dynamic> toMap() => {
        "g": g == null ? null : g,
        "p": p == null ? null : p.toMap(),
      };
}

class FelixCreationDurationLimitsP {
  final String maximumLengthSeconds;
  final String minimumLengthSeconds;

  FelixCreationDurationLimitsP({
    this.maximumLengthSeconds,
    this.minimumLengthSeconds,
  });

  FelixCreationDurationLimitsP copyWith({
    String maximumLengthSeconds,
    String minimumLengthSeconds,
  }) =>
      FelixCreationDurationLimitsP(
        maximumLengthSeconds: maximumLengthSeconds ?? this.maximumLengthSeconds,
        minimumLengthSeconds: minimumLengthSeconds ?? this.minimumLengthSeconds,
      );

  factory FelixCreationDurationLimitsP.fromMap(Map<String, dynamic> json) => FelixCreationDurationLimitsP(
        maximumLengthSeconds: json["maximum_length_seconds"] == null ? null : json["maximum_length_seconds"],
        minimumLengthSeconds: json["minimum_length_seconds"] == null ? null : json["minimum_length_seconds"],
      );

  Map<String, dynamic> toMap() => {
        "maximum_length_seconds": maximumLengthSeconds == null ? null : maximumLengthSeconds,
        "minimum_length_seconds": minimumLengthSeconds == null ? null : minimumLengthSeconds,
      };
}

class FelixCreationFbCrossposting {
  final String g;
  final FelixCreationFbCrosspostingP p;

  FelixCreationFbCrossposting({
    this.g,
    this.p,
  });

  FelixCreationFbCrossposting copyWith({
    String g,
    FelixCreationFbCrosspostingP p,
  }) =>
      FelixCreationFbCrossposting(
        g: g ?? this.g,
        p: p ?? this.p,
      );

  factory FelixCreationFbCrossposting.fromMap(Map<String, dynamic> json) => FelixCreationFbCrossposting(
        g: json["g"] == null ? null : json["g"],
        p: json["p"] == null ? null : FelixCreationFbCrosspostingP.fromMap(json["p"]),
      );

  Map<String, dynamic> toMap() => {
        "g": g == null ? null : g,
        "p": p == null ? null : p.toMap(),
      };
}

class FelixCreationFbCrosspostingP {
  final String isEnabled;

  FelixCreationFbCrosspostingP({
    this.isEnabled,
  });

  FelixCreationFbCrosspostingP copyWith({
    String isEnabled,
  }) =>
      FelixCreationFbCrosspostingP(
        isEnabled: isEnabled ?? this.isEnabled,
      );

  factory FelixCreationFbCrosspostingP.fromMap(Map<String, dynamic> json) => FelixCreationFbCrosspostingP(
        isEnabled: json["is_enabled"] == null ? null : json["is_enabled"],
      );

  Map<String, dynamic> toMap() => {
        "is_enabled": isEnabled == null ? null : isEnabled,
      };
}

class FelixCreationFbCrosspostingV2 {
  final String g;
  final FelixCreationFbCrosspostingV2P p;

  FelixCreationFbCrosspostingV2({
    this.g,
    this.p,
  });

  FelixCreationFbCrosspostingV2 copyWith({
    String g,
    FelixCreationFbCrosspostingV2P p,
  }) =>
      FelixCreationFbCrosspostingV2(
        g: g ?? this.g,
        p: p ?? this.p,
      );

  factory FelixCreationFbCrosspostingV2.fromMap(Map<String, dynamic> json) => FelixCreationFbCrosspostingV2(
        g: json["g"] == null ? null : json["g"],
        p: json["p"] == null ? null : FelixCreationFbCrosspostingV2P.fromMap(json["p"]),
      );

  Map<String, dynamic> toMap() => {
        "g": g == null ? null : g,
        "p": p == null ? null : p.toMap(),
      };
}

class FelixCreationFbCrosspostingV2P {
  final String isEnabled;
  final String displayVersion;

  FelixCreationFbCrosspostingV2P({
    this.isEnabled,
    this.displayVersion,
  });

  FelixCreationFbCrosspostingV2P copyWith({
    String isEnabled,
    String displayVersion,
  }) =>
      FelixCreationFbCrosspostingV2P(
        isEnabled: isEnabled ?? this.isEnabled,
        displayVersion: displayVersion ?? this.displayVersion,
      );

  factory FelixCreationFbCrosspostingV2P.fromMap(Map<String, dynamic> json) => FelixCreationFbCrosspostingV2P(
        isEnabled: json["is_enabled"] == null ? null : json["is_enabled"],
        displayVersion: json["display_version"] == null ? null : json["display_version"],
      );

  Map<String, dynamic> toMap() => {
        "is_enabled": isEnabled == null ? null : isEnabled,
        "display_version": displayVersion == null ? null : displayVersion,
      };
}

class FelixCreationValidation {
  final String g;
  final FelixCreationValidationP p;

  FelixCreationValidation({
    this.g,
    this.p,
  });

  FelixCreationValidation copyWith({
    String g,
    FelixCreationValidationP p,
  }) =>
      FelixCreationValidation(
        g: g ?? this.g,
        p: p ?? this.p,
      );

  factory FelixCreationValidation.fromMap(Map<String, dynamic> json) => FelixCreationValidation(
        g: json["g"] == null ? null : json["g"],
        p: json["p"] == null ? null : FelixCreationValidationP.fromMap(json["p"]),
      );

  Map<String, dynamic> toMap() => {
        "g": g == null ? null : g,
        "p": p == null ? null : p.toMap(),
      };
}

class FelixCreationValidationP {
  final String editVideoControls;
  final String descriptionMaximumLength;
  final String maxVideoSizeInBytes;
  final String minimumLengthForFeedPreviewSeconds;
  final String titleMaximumLength;
  final String validCoverMimeTypes;
  final String validVideoExtensions;
  final String validVideoMimeTypes;

  FelixCreationValidationP({
    this.editVideoControls,
    this.descriptionMaximumLength,
    this.maxVideoSizeInBytes,
    this.minimumLengthForFeedPreviewSeconds,
    this.titleMaximumLength,
    this.validCoverMimeTypes,
    this.validVideoExtensions,
    this.validVideoMimeTypes,
  });

  FelixCreationValidationP copyWith({
    String editVideoControls,
    String descriptionMaximumLength,
    String maxVideoSizeInBytes,
    String minimumLengthForFeedPreviewSeconds,
    String titleMaximumLength,
    String validCoverMimeTypes,
    String validVideoExtensions,
    String validVideoMimeTypes,
  }) =>
      FelixCreationValidationP(
        editVideoControls: editVideoControls ?? this.editVideoControls,
        descriptionMaximumLength: descriptionMaximumLength ?? this.descriptionMaximumLength,
        maxVideoSizeInBytes: maxVideoSizeInBytes ?? this.maxVideoSizeInBytes,
        minimumLengthForFeedPreviewSeconds:
            minimumLengthForFeedPreviewSeconds ?? this.minimumLengthForFeedPreviewSeconds,
        titleMaximumLength: titleMaximumLength ?? this.titleMaximumLength,
        validCoverMimeTypes: validCoverMimeTypes ?? this.validCoverMimeTypes,
        validVideoExtensions: validVideoExtensions ?? this.validVideoExtensions,
        validVideoMimeTypes: validVideoMimeTypes ?? this.validVideoMimeTypes,
      );

  factory FelixCreationValidationP.fromMap(Map<String, dynamic> json) => FelixCreationValidationP(
        editVideoControls: json["edit_video_controls"] == null ? null : json["edit_video_controls"],
        descriptionMaximumLength:
            json["description_maximum_length"] == null ? null : json["description_maximum_length"],
        maxVideoSizeInBytes: json["max_video_size_in_bytes"] == null ? null : json["max_video_size_in_bytes"],
        minimumLengthForFeedPreviewSeconds: json["minimum_length_for_feed_preview_seconds"] == null
            ? null
            : json["minimum_length_for_feed_preview_seconds"],
        titleMaximumLength: json["title_maximum_length"] == null ? null : json["title_maximum_length"],
        validCoverMimeTypes: json["valid_cover_mime_types"] == null ? null : json["valid_cover_mime_types"],
        validVideoExtensions: json["valid_video_extensions"] == null ? null : json["valid_video_extensions"],
        validVideoMimeTypes: json["valid_video_mime_types"] == null ? null : json["valid_video_mime_types"],
      );

  Map<String, dynamic> toMap() => {
        "edit_video_controls": editVideoControls == null ? null : editVideoControls,
        "description_maximum_length": descriptionMaximumLength == null ? null : descriptionMaximumLength,
        "max_video_size_in_bytes": maxVideoSizeInBytes == null ? null : maxVideoSizeInBytes,
        "minimum_length_for_feed_preview_seconds":
            minimumLengthForFeedPreviewSeconds == null ? null : minimumLengthForFeedPreviewSeconds,
        "title_maximum_length": titleMaximumLength == null ? null : titleMaximumLength,
        "valid_cover_mime_types": validCoverMimeTypes == null ? null : validCoverMimeTypes,
        "valid_video_extensions": validVideoExtensions == null ? null : validVideoExtensions,
        "valid_video_mime_types": validVideoMimeTypes == null ? null : validVideoMimeTypes,
      };
}

class MultiregIter {
  final String g;
  final MultiregIterP p;

  MultiregIter({
    this.g,
    this.p,
  });

  MultiregIter copyWith({
    String g,
    MultiregIterP p,
  }) =>
      MultiregIter(
        g: g ?? this.g,
        p: p ?? this.p,
      );

  factory MultiregIter.fromMap(Map<String, dynamic> json) => MultiregIter(
        g: json["g"] == null ? null : json["g"],
        p: json["p"] == null ? null : MultiregIterP.fromMap(json["p"]),
      );

  Map<String, dynamic> toMap() => {
        "g": g == null ? null : g,
        "p": p == null ? null : p.toMap(),
      };
}

class MultiregIterP {
  final String hasBackRemoved;

  MultiregIterP({
    this.hasBackRemoved,
  });

  MultiregIterP copyWith({
    String hasBackRemoved,
  }) =>
      MultiregIterP(
        hasBackRemoved: hasBackRemoved ?? this.hasBackRemoved,
      );

  factory MultiregIterP.fromMap(Map<String, dynamic> json) => MultiregIterP(
        hasBackRemoved: json["has_back_removed"] == null ? null : json["has_back_removed"],
      );

  Map<String, dynamic> toMap() => {
        "has_back_removed": hasBackRemoved == null ? null : hasBackRemoved,
      };
}

class PostOptions {
  final String g;
  final PostOptionsP p;

  PostOptions({
    this.g,
    this.p,
  });

  PostOptions copyWith({
    String g,
    PostOptionsP p,
  }) =>
      PostOptions(
        g: g ?? this.g,
        p: p ?? this.p,
      );

  factory PostOptions.fromMap(Map<String, dynamic> json) => PostOptions(
        g: json["g"] == null ? null : json["g"],
        p: json["p"] == null ? null : PostOptionsP.fromMap(json["p"]),
      );

  Map<String, dynamic> toMap() => {
        "g": g == null ? null : g,
        "p": p == null ? null : p.toMap(),
      };
}

class PostOptionsP {
  final String enableIgtvEmbed;
  final String useRefactor;

  PostOptionsP({
    this.enableIgtvEmbed,
    this.useRefactor,
  });

  PostOptionsP copyWith({
    String enableIgtvEmbed,
    String useRefactor,
  }) =>
      PostOptionsP(
        enableIgtvEmbed: enableIgtvEmbed ?? this.enableIgtvEmbed,
        useRefactor: useRefactor ?? this.useRefactor,
      );

  factory PostOptionsP.fromMap(Map<String, dynamic> json) => PostOptionsP(
        enableIgtvEmbed: json["enable_igtv_embed"] == null ? null : json["enable_igtv_embed"],
        useRefactor: json["use_refactor"] == null ? null : json["use_refactor"],
      );

  Map<String, dynamic> toMap() => {
        "enable_igtv_embed": enableIgtvEmbed == null ? null : enableIgtvEmbed,
        "use_refactor": useRefactor == null ? null : useRefactor,
      };
}

class The0 {
  final Map<String, bool> p;
  final bool qex;

  The0({
    this.p,
    this.qex,
  });

  The0 copyWith({
    Map<String, bool> p,
    bool qex,
  }) =>
      The0(
        p: p ?? this.p,
        qex: qex ?? this.qex,
      );

  factory The0.fromMap(Map<String, dynamic> json) => The0(
        p: json["p"] == null ? null : Map.from(json["p"]).map((k, v) => MapEntry<String, bool>(k, v)),
        qex: json["qex"] == null ? null : json["qex"],
      );

  Map<String, dynamic> toMap() => {
        "p": p == null ? null : Map.from(p).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "qex": qex == null ? null : qex,
      };
}

class The10 {
  final The10P p;
  final bool qex;

  The10({
    this.p,
    this.qex,
  });

  The10 copyWith({
    The10P p,
    bool qex,
  }) =>
      The10(
        p: p ?? this.p,
        qex: qex ?? this.qex,
      );

  factory The10.fromMap(Map<String, dynamic> json) => The10(
        p: json["p"] == null ? null : The10P.fromMap(json["p"]),
        qex: json["qex"] == null ? null : json["qex"],
      );

  Map<String, dynamic> toMap() => {
        "p": p == null ? null : p.toMap(),
        "qex": qex == null ? null : qex,
      };
}

class The10P {
  final bool the2;

  The10P({
    this.the2,
  });

  The10P copyWith({
    bool the2,
  }) =>
      The10P(
        the2: the2 ?? this.the2,
      );

  factory The10P.fromMap(Map<String, dynamic> json) => The10P(
        the2: json["2"] == null ? null : json["2"],
      );

  Map<String, dynamic> toMap() => {
        "2": the2 == null ? null : the2,
      };
}

class The100 {
  final ZeroData p;
  final bool qex;

  The100({
    this.p,
    this.qex,
  });

  The100 copyWith({
    ZeroData p,
    bool qex,
  }) =>
      The100(
        p: p ?? this.p,
        qex: qex ?? this.qex,
      );

  factory The100.fromMap(Map<String, dynamic> json) => The100(
        p: json["p"] == null ? null : ZeroData.fromMap(json["p"]),
        qex: json["qex"] == null ? null : json["qex"],
      );

  Map<String, dynamic> toMap() => {
        "p": p == null ? null : p.toMap(),
        "qex": qex == null ? null : qex,
      };
}

class The12 {
  final The12P p;
  final bool qex;

  The12({
    this.p,
    this.qex,
  });

  The12 copyWith({
    The12P p,
    bool qex,
  }) =>
      The12(
        p: p ?? this.p,
        qex: qex ?? this.qex,
      );

  factory The12.fromMap(Map<String, dynamic> json) => The12(
        p: json["p"] == null ? null : The12P.fromMap(json["p"]),
        qex: json["qex"] == null ? null : json["qex"],
      );

  Map<String, dynamic> toMap() => {
        "p": p == null ? null : p.toMap(),
        "qex": qex == null ? null : qex,
      };
}

class The12P {
  final int the0;

  The12P({
    this.the0,
  });

  The12P copyWith({
    int the0,
  }) =>
      The12P(
        the0: the0 ?? this.the0,
      );

  factory The12P.fromMap(Map<String, dynamic> json) => The12P(
        the0: json["0"] == null ? null : json["0"],
      );

  Map<String, dynamic> toMap() => {
        "0": the0 == null ? null : the0,
      };
}

class The13 {
  final The13P p;
  final bool qex;

  The13({
    this.p,
    this.qex,
  });

  The13 copyWith({
    The13P p,
    bool qex,
  }) =>
      The13(
        p: p ?? this.p,
        qex: qex ?? this.qex,
      );

  factory The13.fromMap(Map<String, dynamic> json) => The13(
        p: json["p"] == null ? null : The13P.fromMap(json["p"]),
        qex: json["qex"] == null ? null : json["qex"],
      );

  Map<String, dynamic> toMap() => {
        "p": p == null ? null : p.toMap(),
        "qex": qex == null ? null : qex,
      };
}

class The13P {
  final bool the0;

  The13P({
    this.the0,
  });

  The13P copyWith({
    bool the0,
  }) =>
      The13P(
        the0: the0 ?? this.the0,
      );

  factory The13P.fromMap(Map<String, dynamic> json) => The13P(
        the0: json["0"] == null ? null : json["0"],
      );

  Map<String, dynamic> toMap() => {
        "0": the0 == null ? null : the0,
      };
}

class The17 {
  final The17P p;
  final bool qex;

  The17({
    this.p,
    this.qex,
  });

  The17 copyWith({
    The17P p,
    bool qex,
  }) =>
      The17(
        p: p ?? this.p,
        qex: qex ?? this.qex,
      );

  factory The17.fromMap(Map<String, dynamic> json) => The17(
        p: json["p"] == null ? null : The17P.fromMap(json["p"]),
        qex: json["qex"] == null ? null : json["qex"],
      );

  Map<String, dynamic> toMap() => {
        "p": p == null ? null : p.toMap(),
        "qex": qex == null ? null : qex,
      };
}

class The17P {
  final bool the1;

  The17P({
    this.the1,
  });

  The17P copyWith({
    bool the1,
  }) =>
      The17P(
        the1: the1 ?? this.the1,
      );

  factory The17P.fromMap(Map<String, dynamic> json) => The17P(
        the1: json["1"] == null ? null : json["1"],
      );

  Map<String, dynamic> toMap() => {
        "1": the1 == null ? null : the1,
      };
}

class The22 {
  final Map<String, dynamic> p;
  final bool qex;

  The22({
    this.p,
    this.qex,
  });

  The22 copyWith({
    Map<String, dynamic> p,
    bool qex,
  }) =>
      The22(
        p: p ?? this.p,
        qex: qex ?? this.qex,
      );

  factory The22.fromMap(Map<String, dynamic> json) => The22(
        p: json["p"] == null ? null : Map.from(json["p"]).map((k, v) => MapEntry<String, dynamic>(k, v)),
        qex: json["qex"] == null ? null : json["qex"],
      );

  Map<String, dynamic> toMap() => {
        "p": p == null ? null : Map.from(p).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "qex": qex == null ? null : qex,
      };
}

class The26 {
  final The26P p;
  final bool qex;

  The26({
    this.p,
    this.qex,
  });

  The26 copyWith({
    The26P p,
    bool qex,
  }) =>
      The26(
        p: p ?? this.p,
        qex: qex ?? this.qex,
      );

  factory The26.fromMap(Map<String, dynamic> json) => The26(
        p: json["p"] == null ? null : The26P.fromMap(json["p"]),
        qex: json["qex"] == null ? null : json["qex"],
      );

  Map<String, dynamic> toMap() => {
        "p": p == null ? null : p.toMap(),
        "qex": qex == null ? null : qex,
      };
}

class The26P {
  final String the0;

  The26P({
    this.the0,
  });

  The26P copyWith({
    String the0,
  }) =>
      The26P(
        the0: the0 ?? this.the0,
      );

  factory The26P.fromMap(Map<String, dynamic> json) => The26P(
        the0: json["0"] == null ? null : json["0"],
      );

  Map<String, dynamic> toMap() => {
        "0": the0 == null ? null : the0,
      };
}

class The41 {
  final The41P p;
  final bool qex;

  The41({
    this.p,
    this.qex,
  });

  The41 copyWith({
    The41P p,
    bool qex,
  }) =>
      The41(
        p: p ?? this.p,
        qex: qex ?? this.qex,
      );

  factory The41.fromMap(Map<String, dynamic> json) => The41(
        p: json["p"] == null ? null : The41P.fromMap(json["p"]),
        qex: json["qex"] == null ? null : json["qex"],
      );

  Map<String, dynamic> toMap() => {
        "p": p == null ? null : p.toMap(),
        "qex": qex == null ? null : qex,
      };
}

class The41P {
  final bool the3;

  The41P({
    this.the3,
  });

  The41P copyWith({
    bool the3,
  }) =>
      The41P(
        the3: the3 ?? this.the3,
      );

  factory The41P.fromMap(Map<String, dynamic> json) => The41P(
        the3: json["3"] == null ? null : json["3"],
      );

  Map<String, dynamic> toMap() => {
        "3": the3 == null ? null : the3,
      };
}

class The44 {
  final Map<String, dynamic> p;
  final bool qex;

  The44({
    this.p,
    this.qex,
  });

  The44 copyWith({
    Map<String, dynamic> p,
    bool qex,
  }) =>
      The44(
        p: p ?? this.p,
        qex: qex ?? this.qex,
      );

  factory The44.fromMap(Map<String, dynamic> json) => The44(
        p: json["p"] == null ? null : Map.from(json["p"]).map((k, v) => MapEntry<String, dynamic>(k, v)),
        qex: json["qex"] == null ? null : json["qex"],
      );

  Map<String, dynamic> toMap() => {
        "p": p == null ? null : Map.from(p).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "qex": qex == null ? null : qex,
      };
}

class The45 {
  final Map<String, dynamic> p;
  final bool qex;

  The45({
    this.p,
    this.qex,
  });

  The45 copyWith({
    Map<String, dynamic> p,
    bool qex,
  }) =>
      The45(
        p: p ?? this.p,
        qex: qex ?? this.qex,
      );

  factory The45.fromMap(Map<String, dynamic> json) => The45(
        p: json["p"] == null ? null : Map.from(json["p"]).map((k, v) => MapEntry<String, dynamic>(k, v)),
        qex: json["qex"] == null ? null : json["qex"],
      );

  Map<String, dynamic> toMap() => {
        "p": p == null ? null : Map.from(p).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "qex": qex == null ? null : qex,
      };
}

class The70 {
  final Map<String, String> p;
  final bool qex;

  The70({
    this.p,
    this.qex,
  });

  The70 copyWith({
    Map<String, String> p,
    bool qex,
  }) =>
      The70(
        p: p ?? this.p,
        qex: qex ?? this.qex,
      );

  factory The70.fromMap(Map<String, dynamic> json) => The70(
        p: json["p"] == null ? null : Map.from(json["p"]).map((k, v) => MapEntry<String, String>(k, v)),
        qex: json["qex"] == null ? null : json["qex"],
      );

  Map<String, dynamic> toMap() => {
        "p": p == null ? null : Map.from(p).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "qex": qex == null ? null : qex,
      };
}

class The71 {
  final The71P p;
  final bool qex;

  The71({
    this.p,
    this.qex,
  });

  The71 copyWith({
    The71P p,
    bool qex,
  }) =>
      The71(
        p: p ?? this.p,
        qex: qex ?? this.qex,
      );

  factory The71.fromMap(Map<String, dynamic> json) => The71(
        p: json["p"] == null ? null : The71P.fromMap(json["p"]),
        qex: json["qex"] == null ? null : json["qex"],
      );

  Map<String, dynamic> toMap() => {
        "p": p == null ? null : p.toMap(),
        "qex": qex == null ? null : qex,
      };
}

class The71P {
  final String the1;

  The71P({
    this.the1,
  });

  The71P copyWith({
    String the1,
  }) =>
      The71P(
        the1: the1 ?? this.the1,
      );

  factory The71P.fromMap(Map<String, dynamic> json) => The71P(
        the1: json["1"] == null ? null : json["1"],
      );

  Map<String, dynamic> toMap() => {
        "1": the1 == null ? null : the1,
      };
}

class The85 {
  final Map<String, dynamic> p;
  final bool qex;

  The85({
    this.p,
    this.qex,
  });

  The85 copyWith({
    Map<String, dynamic> p,
    bool qex,
  }) =>
      The85(
        p: p ?? this.p,
        qex: qex ?? this.qex,
      );

  factory The85.fromMap(Map<String, dynamic> json) => The85(
        p: json["p"] == null ? null : Map.from(json["p"]).map((k, v) => MapEntry<String, dynamic>(k, v)),
        qex: json["qex"] == null ? null : json["qex"],
      );

  Map<String, dynamic> toMap() => {
        "p": p == null ? null : Map.from(p).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "qex": qex == null ? null : qex,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
