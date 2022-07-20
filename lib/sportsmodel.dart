/*
// To parse required this JSON data, do
//
//     final sports = sportsFromJson(jsonString);

import 'dart:convert';

class GamesData {
  GamesData({
    required this.slots,
    required this.casino,
    required this.others,
    required this.poker,
    required this.sports,
    required this.fishHunter,
    required this.lottery,
  });

  Map<String, Casino>? slots;
  Map<String, Casino>? casino;
  Others? others;
  Poker? poker;
  SportsClass? sports;
  FishHunter? fishHunter;
  Lottery? lottery;

  factory GamesData.fromJson(Map<String, dynamic> json) => GamesData(
    slots: json["slots"] == null ? null : Map.from(json["slots"]).map((k, v) => MapEntry<String, Casino>(k, Casino.fromJson(v))),
    casino: json["casino"] == null ? null : Map.from(json["casino"]).map((k, v) => MapEntry<String, Casino>(k, Casino.fromJson(v))),
    others: json["others"] == null ? null : Others.fromJson(json["others"]),
    poker: json["poker"] == null ? null : Poker.fromJson(json["poker"]),
    sports: json["sports"] == null ? null : SportsClass.fromJson(json["sports"]),
    fishHunter: json["fish-hunter"] == null ? null : FishHunter.fromJson(json["fish-hunter"]),
    lottery: json["lottery"] == null ? null : Lottery.fromJson(json["lottery"]),
  );

  Map<String, dynamic> toJson() => {
    "slots": slots == null ? null : Map.from(slots!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "casino": casino == null ? null : Map.from(casino!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "others": others == null ? null : others?.toJson(),
    "poker": poker == null ? null : poker?.toJson(),
    "sports": sports == null ? null : sports?.toJson(),
    "fish-hunter": fishHunter == null ? null : fishHunter?.toJson(),
    "lottery": lottery == null ? null : lottery?.toJson(),
  };
}

class Casino {
  Casino({
    required this.gameId,
    required this.category,
    required this.gameName,
    required this.gameBrand,
    required this.gameCode,
    required this.maintenance,
    required this.selfMaintenance,
    required this.status,
    required this.selfStatus,
    required this.maintenanceDisabled,
    required this.statusDisabled,
    required this.statusDisabledByTypeId,
    required this.maintenanceDisabledByTypeId,
    required this.gameLaunchLink,
    required this.seq,
    required this.casinoBrandSlug,
    //required this.categorySlug,
    required this.displayName,
    required this.isCo,
    required this.imgSrc,
    required this.block,
    required this.isPromoDisabled,
    required this.brandSlug,
    required this.isHidden,
    required this.group,
    required this.imgSrcLarge,
    required this.gameApiLink,
    required this.isNew,
  });

  int gameId;
  String category;
  String gameName;
  String gameBrand;
  String gameCode;
  int maintenance;
  int selfMaintenance;
  int status;
  int selfStatus;
  int maintenanceDisabled;
  int statusDisabled;
  String statusDisabledByTypeId;
  String maintenanceDisabledByTypeId;
  String gameLaunchLink;
  int seq;
  String casinoBrandSlug;
  //CategoryValue? categorySlug;
  String displayName;
  int isCo;
  String imgSrc;
  int block;
  int isPromoDisabled;
  String brandSlug;
  bool isHidden;
  String group;
  String imgSrcLarge;
  String gameApiLink;
  int isNew;

  factory Casino.fromJson(Map<String, dynamic> json) => Casino(
    gameId: json["game_id"] == null ? null : json["game_id"],
    category: json["category"] == null ? null : json["category"],
    gameName: json["game_name"] == null ? null : json["game_name"],
    gameBrand: json["game_brand"] == null ? null : json["game_brand"],
    gameCode: json["game_code"] == null ? null : json["game_code"],
    maintenance: json["maintenance"] == null ? null : json["maintenance"],
    selfMaintenance: json["self_maintenance"] == null ? null : json["self_maintenance"],
    status: json["status"] == null ? null : json["status"],
    selfStatus: json["self_status"] == null ? null : json["self_status"],
    maintenanceDisabled: json["maintenance_disabled"] == null ? null : json["maintenance_disabled"],
    statusDisabled: json["status_disabled"] == null ? null : json["status_disabled"],
    statusDisabledByTypeId: json["status_disabled_by_type_id"] == null ? null : json["status_disabled_by_type_id"],
    maintenanceDisabledByTypeId: json["maintenance_disabled_by_type_id"] == null ? null : json["maintenance_disabled_by_type_id"],
    gameLaunchLink: json["game_launch_link"] == null ? null : json["game_launch_link"],
    seq: json["seq"] == null ? null : json["seq"],
    casinoBrandSlug: json["brand_slug"] == null ? null : json["brand_slug"],
    //categorySlug: json["category_slug"] == null ? null : categoryValueValues.map[json["category_slug"]],
    displayName: json["display_name"] == null ? null : json["display_name"],
    isCo: json["isCO"] == null ? null : json["isCO"],
    imgSrc: json["img_src"] == null ? null : json["img_src"],
    block: json["block"] == null ? null : json["block"],
    isPromoDisabled: json["isPromoDisabled"] == null ? null : json["isPromoDisabled"],
    brandSlug: json["__brand_slug"] == null ? null : json["__brand_slug"],
    isHidden: json["is_hidden"] == null ? null : json["is_hidden"],
    group: json["group"] == null ? null : json["group"],
    imgSrcLarge: json["img_src_large"] == null ? null : json["img_src_large"],
    gameApiLink: json["game_api_link"] == null ? null : json["game_api_link"],
    isNew: json["isNew"] == null ? null : json["isNew"],
  );

  Map<String, dynamic> toJson() => {
    "game_id": gameId == null ? null : gameId,
    "category": category == null ? null : category,
    "game_name": gameName == null ? null : gameName,
    "game_brand": gameBrand == null ? null : gameBrand,
    "game_code": gameCode == null ? null : gameCode,
    "maintenance": maintenance == null ? null : maintenance,
    "self_maintenance": selfMaintenance == null ? null : selfMaintenance,
    "status": status == null ? null : status,
    "self_status": selfStatus == null ? null : selfStatus,
    "maintenance_disabled": maintenanceDisabled == null ? null : maintenanceDisabled,
    "status_disabled": statusDisabled == null ? null : statusDisabled,
    "status_disabled_by_type_id": statusDisabledByTypeId == null ? null : statusDisabledByTypeId,
    "maintenance_disabled_by_type_id": maintenanceDisabledByTypeId == null ? null : maintenanceDisabledByTypeId,
    "game_launch_link": gameLaunchLink == null ? null : gameLaunchLink,
    "seq": seq == null ? null : seq,
    "brand_slug": casinoBrandSlug == null ? null : casinoBrandSlug,
   // "category_slug": categorySlug == null ? null : categoryValueValues.reverse[categorySlug],
    "display_name": displayName == null ? null : displayName,
    "isCO": isCo == null ? null : isCo,
    "img_src": imgSrc == null ? null : imgSrc,
    "block": block == null ? null : block,
    "isPromoDisabled": isPromoDisabled == null ? null : isPromoDisabled,
    "__brand_slug": brandSlug == null ? null : brandSlug,
    "is_hidden": isHidden == null ? null : isHidden,
    "group": group == null ? null : group,
    "img_src_large": imgSrcLarge == null ? null : imgSrcLarge,
    "game_api_link": gameApiLink == null ? null : gameApiLink,
    "isNew": isNew == null ? null : isNew,
  };
}

class FishHunter {
  FishHunter({
    required this.jkFishing,
    required this.sgFishing,
    required this.cq9Fishing,
    required this.skywindFishing,
    required this.playstarFishing,
  });

  Casino? jkFishing;
  Casino? sgFishing;
  Casino? cq9Fishing;
  Casino? skywindFishing;
  Casino? playstarFishing;

  factory FishHunter.fromJson(Map<String, dynamic> json) => FishHunter(
    jkFishing: json["jk_fishing"] == null ? null : Casino.fromJson(json["jk_fishing"]),
    sgFishing: json["sg_fishing"] == null ? null : Casino.fromJson(json["sg_fishing"]),
    cq9Fishing: json["cq9_fishing"] == null ? null : Casino.fromJson(json["cq9_fishing"]),
    skywindFishing: json["skywind_fishing"] == null ? null : Casino.fromJson(json["skywind_fishing"]),
    playstarFishing: json["playstar_fishing"] == null ? null : Casino.fromJson(json["playstar_fishing"]),
  );

  Map<String, dynamic> toJson() => {
    "jk_fishing": jkFishing == null ? null : jkFishing?.toJson(),
    "sg_fishing": sgFishing == null ? null : sgFishing?.toJson(),
    "cq9_fishing": cq9Fishing == null ? null : cq9Fishing?.toJson(),
    "skywind_fishing": skywindFishing == null ? null : skywindFishing?.toJson(),
    "playstar_fishing": playstarFishing == null ? null : playstarFishing?.toJson(),
  };
}

class Lottery {
  Lottery({
    required this.hkgpTogel,
    required this.hkgpRacing,
    required this.hkgpNumber,
  });

  Casino? hkgpTogel;
  Casino? hkgpRacing;
  Casino? hkgpNumber;

  factory Lottery.fromJson(Map<String, dynamic> json) => Lottery(
    hkgpTogel: json["hkgp_togel"] == null ? null : Casino.fromJson(json["hkgp_togel"]),
    hkgpRacing: json["hkgp_racing"] == null ? null : Casino.fromJson(json["hkgp_racing"]),
    hkgpNumber: json["hkgp_number"] == null ? null : Casino.fromJson(json["hkgp_number"]),
  );

  Map<String, dynamic> toJson() => {
    "hkgp_togel": hkgpTogel == null ? null : hkgpTogel?.toJson(),
    "hkgp_racing": hkgpRacing == null ? null : hkgpRacing?.toJson(),
    "hkgp_number": hkgpNumber == null ? null : hkgpNumber?.toJson(),
  };
}

class Others {
  Others({
    required this.ppRngBca,
    required this.ppRngBjma,
    required this.ppRngBndt,
    required this.ppRngBnadvanced,
    required this.ppRngRla,
    required this.ppRngBjmb,
    required this.ppRngSpaceman,
    required this.ugRngBolaBlind1,
    required this.ugRngClassicBolaBlind1,
    required this.ugRngKeno1,
    required this.ugRngKeno2,
    required this.ugRngKeno3,
    required this.ugRngPoker1,
    required this.ugRngBaccarat1,
    required this.sv388Cf,
  });

  PpRngBca? ppRngBca;
  PpRngBca? ppRngBjma;
  PpRngBca? ppRngBndt;
  PpRngBca? ppRngBnadvanced;
  PpRngBca? ppRngRla;
  PpRngBca? ppRngBjmb;
  PpRngBca? ppRngSpaceman;
  PpRngBca? ugRngBolaBlind1;
  PpRngBca? ugRngClassicBolaBlind1;
  PpRngBca? ugRngKeno1;
  PpRngBca? ugRngKeno2;
  PpRngBca? ugRngKeno3;
  PpRngBca? ugRngPoker1;
  PpRngBca? ugRngBaccarat1;
  Casino? sv388Cf;

  factory Others.fromJson(Map<String, dynamic> json) => Others(
    ppRngBca: json["pp_rng_bca"] == null ? null : PpRngBca.fromJson(json["pp_rng_bca"]),
    ppRngBjma: json["pp_rng_bjma"] == null ? null : PpRngBca.fromJson(json["pp_rng_bjma"]),
    ppRngBndt: json["pp_rng_bndt"] == null ? null : PpRngBca.fromJson(json["pp_rng_bndt"]),
    ppRngBnadvanced: json["pp_rng_bnadvanced"] == null ? null : PpRngBca.fromJson(json["pp_rng_bnadvanced"]),
    ppRngRla: json["pp_rng_rla"] == null ? null : PpRngBca.fromJson(json["pp_rng_rla"]),
    ppRngBjmb: json["pp_rng_bjmb"] == null ? null : PpRngBca.fromJson(json["pp_rng_bjmb"]),
    ppRngSpaceman: json["pp_rng_spaceman"] == null ? null : PpRngBca.fromJson(json["pp_rng_spaceman"]),
    ugRngBolaBlind1: json["ug_rng_bola_blind_1"] == null ? null : PpRngBca.fromJson(json["ug_rng_bola_blind_1"]),
    ugRngClassicBolaBlind1: json["ug_rng_classic_bola_blind_1"] == null ? null : PpRngBca.fromJson(json["ug_rng_classic_bola_blind_1"]),
    ugRngKeno1: json["ug_rng_keno_1"] == null ? null : PpRngBca.fromJson(json["ug_rng_keno_1"]),
    ugRngKeno2: json["ug_rng_keno_2"] == null ? null : PpRngBca.fromJson(json["ug_rng_keno_2"]),
    ugRngKeno3: json["ug_rng_keno_3"] == null ? null : PpRngBca.fromJson(json["ug_rng_keno_3"]),
    ugRngPoker1: json["ug_rng_poker_1"] == null ? null : PpRngBca.fromJson(json["ug_rng_poker_1"]),
    ugRngBaccarat1: json["ug_rng_baccarat_1"] == null ? null : PpRngBca.fromJson(json["ug_rng_baccarat_1"]),
    sv388Cf: json["sv388_cf"] == null ? null : Casino.fromJson(json["sv388_cf"]),
  );

  Map<String, dynamic> toJson() => {
    "pp_rng_bca": ppRngBca == null ? null : ppRngBca?.toJson(),
    "pp_rng_bjma": ppRngBjma == null ? null : ppRngBjma?.toJson(),
    "pp_rng_bndt": ppRngBndt == null ? null : ppRngBndt?.toJson(),
    "pp_rng_bnadvanced": ppRngBnadvanced == null ? null : ppRngBnadvanced?.toJson(),
    "pp_rng_rla": ppRngRla == null ? null : ppRngRla?.toJson(),
    "pp_rng_bjmb": ppRngBjmb == null ? null : ppRngBjmb?.toJson(),
    "pp_rng_spaceman": ppRngSpaceman == null ? null : ppRngSpaceman?.toJson(),
    "ug_rng_bola_blind_1": ugRngBolaBlind1 == null ? null : ugRngBolaBlind1?.toJson(),
    "ug_rng_classic_bola_blind_1": ugRngClassicBolaBlind1 == null ? null : ugRngClassicBolaBlind1?.toJson(),
    "ug_rng_keno_1": ugRngKeno1 == null ? null : ugRngKeno1?.toJson(),
    "ug_rng_keno_2": ugRngKeno2 == null ? null : ugRngKeno2?.toJson(),
    "ug_rng_keno_3": ugRngKeno3 == null ? null : ugRngKeno3?.toJson(),
    "ug_rng_poker_1": ugRngPoker1 == null ? null : ugRngPoker1?.toJson(),
    "ug_rng_baccarat_1": ugRngBaccarat1 == null ? null : ugRngBaccarat1?.toJson(),
    "sv388_cf": sv388Cf == null ? null : sv388Cf?.toJson(),
  };
}

class PpRngBca {
  PpRngBca({
    required this.gameId,
    required this.category,
    required this.gameName,
    required this.gameBrand,
    required this.gameCode,
    required this.maintenance,
    required this.selfMaintenance,
    required this.status,
    required this.selfStatus,
    required this.maintenanceDisabled,
    required this.statusDisabled,
    required this.statusDisabledByTypeId,
    required this.maintenanceDisabledByTypeId,
    required this.gameLaunchLink,
    required this.seq,
    required this.ppRngBcaBrandSlug,
    //required this.categorySlug,
    required this.displayName,
    required this.imgSrc,
    required this.group,
    required this.block,
    required this.isPromoDisabled,
    required this.isCo,
    required this.brandSlug,
    required this.playType,
    required this.imgSrcLarge,
  });

  String? gameId;
  PurpleCategory? category;
  String? gameName;
  DisplayName? gameBrand;
  GameCode? gameCode;
  int? maintenance;
  int? selfMaintenance;
  int? status;
  int? selfStatus;
  int? maintenanceDisabled;
  int? statusDisabled;
  String? statusDisabledByTypeId;
  String? maintenanceDisabledByTypeId;
  String? gameLaunchLink;
  int? seq;
  String? ppRngBcaBrandSlug;
  //CategoryValue? categorySlug;
  DisplayName? displayName;
  String? imgSrc;
  Group? group;
  int? block;
  int? isPromoDisabled;
  int? isCo;
  BrandSlug? brandSlug;
  dynamic? playType;
  ImgSrcLarge? imgSrcLarge;

  factory PpRngBca.fromJson(Map<String, dynamic> json) => PpRngBca(
    gameId: json["game_id"] == null ? null : json["game_id"],
    category: json["category"] == null ? null : purpleCategoryValues.map[json["category"]],
    gameName: json["game_name"] == null ? null : json["game_name"],
    gameBrand: json["game_brand"] == null ? null : displayNameValues.map[json["game_brand"]],
    gameCode: json["game_code"] == null ? null : gameCodeValues.map[json["game_code"]],
    maintenance: json["maintenance"] == null ? null : json["maintenance"],
    selfMaintenance: json["self_maintenance"] == null ? null : json["self_maintenance"],
    status: json["status"] == null ? null : json["status"],
    selfStatus: json["self_status"] == null ? null : json["self_status"],
    maintenanceDisabled: json["maintenance_disabled"] == null ? null : json["maintenance_disabled"],
    statusDisabled: json["status_disabled"] == null ? null : json["status_disabled"],
    statusDisabledByTypeId: json["status_disabled_by_type_id"] == null ? null : json["status_disabled_by_type_id"],
    maintenanceDisabledByTypeId: json["maintenance_disabled_by_type_id"] == null ? null : json["maintenance_disabled_by_type_id"],
    gameLaunchLink: json["game_launch_link"] == null ? null : json["game_launch_link"],
    seq: json["seq"] == null ? null : json["seq"],
    ppRngBcaBrandSlug: json["brand_slug"] == null ? null : json["brand_slug"],
    //categorySlug: json["category_slug"] == null ? null : categoryValueValues.map[json["category_slug"]],
    displayName: json["display_name"] == null ? null : displayNameValues.map[json["display_name"]],
    imgSrc: json["img_src"] == null ? null : json["img_src"],
    group: json["group"] == null ? null : groupValues.map[json["group"]],
    block: json["block"] == null ? null : json["block"],
    isPromoDisabled: json["isPromoDisabled"] == null ? null : json["isPromoDisabled"],
    isCo: json["isCO"] == null ? null : json["isCO"],
    brandSlug: json["__brand_slug"] == null ? null : brandSlugValues.map[json["__brand_slug"]],
    playType: json["play_type"],
    imgSrcLarge: json["img_src_large"] == null ? null : imgSrcLargeValues.map[json["img_src_large"]],
  );

  Map<String, dynamic> toJson() => {
    "game_id": gameId == null ? null : gameId,
    "category": category == null ? null : purpleCategoryValues.reverse[category],
    "game_name": gameName == null ? null : gameName,
    "game_brand": gameBrand == null ? null : displayNameValues.reverse[gameBrand],
    "game_code": gameCode == null ? null : gameCodeValues.reverse[gameCode],
    "maintenance": maintenance == null ? null : maintenance,
    "self_maintenance": selfMaintenance == null ? null : selfMaintenance,
    "status": status == null ? null : status,
    "self_status": selfStatus == null ? null : selfStatus,
    "maintenance_disabled": maintenanceDisabled == null ? null : maintenanceDisabled,
    "status_disabled": statusDisabled == null ? null : statusDisabled,
    "status_disabled_by_type_id": statusDisabledByTypeId == null ? null : statusDisabledByTypeId,
    "maintenance_disabled_by_type_id": maintenanceDisabledByTypeId == null ? null : maintenanceDisabledByTypeId,
    "game_launch_link": gameLaunchLink == null ? null : gameLaunchLink,
    "seq": seq == null ? null : seq,
    "brand_slug": ppRngBcaBrandSlug == null ? null : ppRngBcaBrandSlug,
    //"category_slug": categorySlug == null ? null : categoryValueValues.reverse[categorySlug],
    "display_name": displayName == null ? null : displayNameValues.reverse[displayName],
    "img_src": imgSrc == null ? null : imgSrc,
    "group": group == null ? null : groupValues.reverse[group],
    "block": block == null ? null : block,
    "isPromoDisabled": isPromoDisabled == null ? null : isPromoDisabled,
    "isCO": isCo == null ? null : isCo,
    "__brand_slug": brandSlug == null ? null : brandSlugValues.reverse[brandSlug],
    "play_type": playType,
    "img_src_large": imgSrcLarge == null ? null : imgSrcLargeValues.reverse[imgSrcLarge],
  };
}

enum BrandSlug { PRAGMATIC_PLAY, ULTIMATE_GAMING, THE_1_GAMING }

final brandSlugValues = EnumValues({
  "pragmatic-play": BrandSlug.PRAGMATIC_PLAY,
  "1gaming": BrandSlug.THE_1_GAMING,
  "ultimate-gaming": BrandSlug.ULTIMATE_GAMING
});

enum PurpleCategory { RNG, P2_P }

final purpleCategoryValues = EnumValues({
  "p2p": PurpleCategory.P2_P,
  "rng": PurpleCategory.RNG
});

enum DisplayName { PRAGMATICPLAY, ULTIMATE_GAMING, THE_1_GPOKER }

final displayNameValues = EnumValues({
  "PRAGMATICPLAY": DisplayName.PRAGMATICPLAY,
  "1GPOKER": DisplayName.THE_1_GPOKER,
  "ULTIMATE GAMING": DisplayName.ULTIMATE_GAMING
});

enum GameCode { PP_RNG, UG_RNG, THE_1_G_P2_P }

final gameCodeValues = EnumValues({
  "pp_rng": GameCode.PP_RNG,
  "1g_p2p": GameCode.THE_1_G_P2_P,
  "ug_rng": GameCode.UG_RNG
});

enum Group { RNG }

final groupValues = EnumValues({
  "RNG": Group.RNG
});

enum ImgSrcLarge { POKER_1_G_POKER560_X220_PNG }

final imgSrcLargeValues = EnumValues({
  "poker/1g_poker560x220.png": ImgSrcLarge.POKER_1_G_POKER560_X220_PNG
});

class Poker {
  Poker({
    required this.the1GP2PTxp,
    required this.the1GP2PPkd,
    required this.the1GP2PBcr,
    required this.the1GP2PBcm,
    required this.the1GP2PCmk,
    required this.the1GP2PDqq,
    required this.the1GP2PCps,
    required this.the1GP2PBcp,
    required this.the1GP2PCps2,
    required this.the1GP2PBcp2,
    required this.the1GP2PBsk,
    required this.idnP2P,
  });

  PpRngBca? the1GP2PTxp;
  PpRngBca? the1GP2PPkd;
  PpRngBca? the1GP2PBcr;
  PpRngBca? the1GP2PBcm;
  PpRngBca? the1GP2PCmk;
  PpRngBca? the1GP2PDqq;
  PpRngBca? the1GP2PCps;
  PpRngBca? the1GP2PBcp;
  PpRngBca? the1GP2PCps2;
  PpRngBca? the1GP2PBcp2;
  PpRngBca? the1GP2PBsk;
  Casino? idnP2P;

  factory Poker.fromJson(Map<String, dynamic> json) => Poker(
    the1GP2PTxp: json["1g_p2p_TXP"] == null ? null : PpRngBca.fromJson(json["1g_p2p_TXP"]),
    the1GP2PPkd: json["1g_p2p_PKD"] == null ? null : PpRngBca.fromJson(json["1g_p2p_PKD"]),
    the1GP2PBcr: json["1g_p2p_BCR"] == null ? null : PpRngBca.fromJson(json["1g_p2p_BCR"]),
    the1GP2PBcm: json["1g_p2p_BCM"] == null ? null : PpRngBca.fromJson(json["1g_p2p_BCM"]),
    the1GP2PCmk: json["1g_p2p_CMK"] == null ? null : PpRngBca.fromJson(json["1g_p2p_CMK"]),
    the1GP2PDqq: json["1g_p2p_DQQ"] == null ? null : PpRngBca.fromJson(json["1g_p2p_DQQ"]),
    the1GP2PCps: json["1g_p2p_CPS"] == null ? null : PpRngBca.fromJson(json["1g_p2p_CPS"]),
    the1GP2PBcp: json["1g_p2p_BCP"] == null ? null : PpRngBca.fromJson(json["1g_p2p_BCP"]),
    the1GP2PCps2: json["1g_p2p_CPS2"] == null ? null : PpRngBca.fromJson(json["1g_p2p_CPS2"]),
    the1GP2PBcp2: json["1g_p2p_BCP2"] == null ? null : PpRngBca.fromJson(json["1g_p2p_BCP2"]),
    the1GP2PBsk: json["1g_p2p_BSK"] == null ? null : PpRngBca.fromJson(json["1g_p2p_BSK"]),
    idnP2P: json["idn_p2p"] == null ? null : Casino.fromJson(json["idn_p2p"]),
  );

  Map<String, dynamic> toJson() => {
    "1g_p2p_TXP": the1GP2PTxp == null ? null : the1GP2PTxp?.toJson(),
    "1g_p2p_PKD": the1GP2PPkd == null ? null : the1GP2PPkd?.toJson(),
    "1g_p2p_BCR": the1GP2PBcr == null ? null : the1GP2PBcr?.toJson(),
    "1g_p2p_BCM": the1GP2PBcm == null ? null : the1GP2PBcm?.toJson(),
    "1g_p2p_CMK": the1GP2PCmk == null ? null : the1GP2PCmk?.toJson(),
    "1g_p2p_DQQ": the1GP2PDqq == null ? null : the1GP2PDqq?.toJson(),
    "1g_p2p_CPS": the1GP2PCps == null ? null : the1GP2PCps?.toJson(),
    "1g_p2p_BCP": the1GP2PBcp == null ? null : the1GP2PBcp?.toJson(),
    "1g_p2p_CPS2": the1GP2PCps2 == null ? null : the1GP2PCps2?.toJson(),
    "1g_p2p_BCP2": the1GP2PBcp2 == null ? null : the1GP2PBcp2?.toJson(),
    "1g_p2p_BSK": the1GP2PBsk == null ? null : the1GP2PBsk?.toJson(),
    "idn_p2p": idnP2P == null ? null : idnP2P?.toJson(),
  };
}

class SportsClass {
  SportsClass({
    required this.btiSport,
    required this.cmdsSport,
    required this.ugSport,
    required this.sboSportNew,
    required this.ibcSport,
    required this.virtualSport,
  });

  Casino? btiSport;
  Casino? cmdsSport;
  Casino? ugSport;
  Casino? sboSportNew;
  Casino? ibcSport;
  Casino? virtualSport;

  factory SportsClass.fromJson(Map<String, dynamic> json) => SportsClass(
    btiSport: json["bti_sport"] == null ? null : Casino.fromJson(json["bti_sport"]),
    cmdsSport: json["cmds_sport"] == null ? null : Casino.fromJson(json["cmds_sport"]),
    ugSport: json["ug_sport"] == null ? null : Casino.fromJson(json["ug_sport"]),
    sboSportNew: json["sbo_sport_new"] == null ? null : Casino.fromJson(json["sbo_sport_new"]),
    ibcSport: json["ibc_sport"] == null ? null : Casino.fromJson(json["ibc_sport"]),
    virtualSport: json["virtual_sport"] == null ? null : Casino.fromJson(json["virtual_sport"]),
  );

  Map<String, dynamic> toJson() => {
    "bti_sport": btiSport == null ? null : btiSport?.toJson(),
    "cmds_sport": cmdsSport == null ? null : cmdsSport?.toJson(),
    "ug_sport": ugSport == null ? null : ugSport?.toJson(),
    "sbo_sport_new": sboSportNew == null ? null : sboSportNew?.toJson(),
    "ibc_sport": ibcSport == null ? null : ibcSport?.toJson(),
    "virtual_sport": virtualSport == null ? null : virtualSport?.toJson(),
  };
}

class WebsiteContents {
  WebsiteContents({
    required this.customMenu,
    required this.customMenuMobile,
    required this.customMenu2Title,
    required this.customMenu2Url,
    required this.isOnCustomMenu2,
    required this.customMenuLang,
    required this.customMenuMobileLang,
    required this.customMenu2Logo,
    required this.customMenuLogo,
  });

  String customMenu;
  String customMenuMobile;
  String customMenu2Title;
  String customMenu2Url;
  String isOnCustomMenu2;
  String customMenuLang;
  String customMenuMobileLang;
  String customMenu2Logo;
  String customMenuLogo;

  factory WebsiteContents.fromJson(Map<String, dynamic> json) => WebsiteContents(
    customMenu: json["custom_menu"] == null ? null : json["custom_menu"],
    customMenuMobile: json["custom_menu_mobile"] == null ? null : json["custom_menu_mobile"],
    customMenu2Title: json["custom_menu2_title"] == null ? null : json["custom_menu2_title"],
    customMenu2Url: json["custom_menu2_url"] == null ? null : json["custom_menu2_url"],
    isOnCustomMenu2: json["isOnCustomMenu2"] == null ? null : json["isOnCustomMenu2"],
    customMenuLang: json["custom_menu_lang"] == null ? null : json["custom_menu_lang"],
    customMenuMobileLang: json["custom_menu_mobile_lang"] == null ? null : json["custom_menu_mobile_lang"],
    customMenu2Logo: json["custom_menu2_logo"] == null ? null : json["custom_menu2_logo"],
    customMenuLogo: json["custom_menu_logo"] == null ? null : json["custom_menu_logo"],
  );

  Map<String, dynamic> toJson() => {
    "custom_menu": customMenu == null ? null : customMenu,
    "custom_menu_mobile": customMenuMobile == null ? null : customMenuMobile,
    "custom_menu2_title": customMenu2Title == null ? null : customMenu2Title,
    "custom_menu2_url": customMenu2Url == null ? null : customMenu2Url,
    "isOnCustomMenu2": isOnCustomMenu2 == null ? null : isOnCustomMenu2,
    "custom_menu_lang": customMenuLang == null ? null : customMenuLang,
    "custom_menu_mobile_lang": customMenuMobileLang == null ? null : customMenuMobileLang,
    "custom_menu2_logo": customMenu2Logo == null ? null : customMenu2Logo,
    "custom_menu_logo": customMenuLogo == null ? null : customMenuLogo,
  };
}

class WebsiteSettings {
  WebsiteSettings({
    required this.id,
    required this.webTitle,
    required this.pageTitle,
    required this.googleAnalytics,
    required this.chatUrl,
    required this.ampRedirectUrl,
    required this.livechatCode,
    required this.webUrl,
    required this.websiteStatus,
    required this.styleConfigId2,
    required this.reason,
    required this.chatLicence,
    required this.webHostSeo,
    required this.canonicalUrl,
    required this.isHas2NdPin,
    required this.isMobileBottomBar,
    required this.customMenuTitle,
    required this.isOnCustomMenu,
    required this.isOnCustomMenu2,
    required this.isOffReferralMenu,
    required this.websiteFavicon,
    required this.progressiveImg,
    required this.progressiveImgMobile,
    required this.websiteLogoMobile,
    required this.websiteLogo,
    required this.timeZone,
    required this.initialDepositAmount,
    required this.withdrawNewBank,
    required this.depositNewBank,
    required this.initialUsers,
    required this.depositNotice,
    required this.ewalletStatus,
    required this.registerHasBank,
    required this.registerHasEwallet,
    required this.websiteSettingsIsNoHomeDefFooter,
    required this.apkUrl,
    required this.bankgroupAutoMode,
    required this.apkQrCode,
    required this.ampUrl,
    required this.googleAnalyticsId,
    required this.ownerVeriCode,
    required this.pusherAppId,
    required this.pusherKey,
    required this.pusherSecret,
    required this.pusherCluster,
    required this.companyOn,
    required this.pulsa,
    required this.crypto,
    required this.eWallet,
    required this.currencyCode,
    required this.agentId,
    required this.isNoHomeDefFooter,
  });

  int id;
  String webTitle;
  String pageTitle;
  dynamic googleAnalytics;
  String chatUrl;
  String ampRedirectUrl;
  dynamic livechatCode;
  String webUrl;
  int websiteStatus;
  String styleConfigId2;
  dynamic reason;
  dynamic chatLicence;
  dynamic webHostSeo;
  String canonicalUrl;
  String isHas2NdPin;
  String isMobileBottomBar;
  String customMenuTitle;
  String isOnCustomMenu;
  String isOnCustomMenu2;
  String isOffReferralMenu;
  String websiteFavicon;
  String progressiveImg;
  String progressiveImgMobile;
  String websiteLogoMobile;
  String websiteLogo;
  String timeZone;
  int initialDepositAmount;
  int withdrawNewBank;
  int depositNewBank;
  int initialUsers;
  String depositNotice;
  String ewalletStatus;
  int registerHasBank;
  int registerHasEwallet;
  int websiteSettingsIsNoHomeDefFooter;
  dynamic apkUrl;
  int bankgroupAutoMode;
  String apkQrCode;
  String ampUrl;
  String googleAnalyticsId;
  String ownerVeriCode;
  String pusherAppId;
  String pusherKey;
  String pusherSecret;
  String pusherCluster;
  int companyOn;
  String pulsa;
  String crypto;
  String eWallet;
  String currencyCode;
  String agentId;
  int isNoHomeDefFooter;

  factory WebsiteSettings.fromJson(Map<String, dynamic> json) => WebsiteSettings(
    id: json["id"] == null ? null : json["id"],
    webTitle: json["webTitle"] == null ? null : json["webTitle"],
    pageTitle: json["PageTitle"] == null ? null : json["PageTitle"],
    googleAnalytics: json["googleAnalytics"],
    chatUrl: json["chatUrl"] == null ? null : json["chatUrl"],
    ampRedirectUrl: json["amp_redirect_url"] == null ? null : json["amp_redirect_url"],
    livechatCode: json["livechatCode"],
    webUrl: json["webUrl"] == null ? null : json["webUrl"],
    websiteStatus: json["websiteStatus"] == null ? null : json["websiteStatus"],
    styleConfigId2: json["style_config_id2"] == null ? null : json["style_config_id2"],
    reason: json["reason"],
    chatLicence: json["chatLicence"],
    webHostSeo: json["webHostSeo"],
    canonicalUrl: json["canonicalUrl"] == null ? null : json["canonicalUrl"],
    isHas2NdPin: json["isHas2ndPin"] == null ? null : json["isHas2ndPin"],
    isMobileBottomBar: json["isMobileBottomBar"] == null ? null : json["isMobileBottomBar"],
    customMenuTitle: json["custom_menu_title"] == null ? null : json["custom_menu_title"],
    isOnCustomMenu: json["isOnCustomMenu"] == null ? null : json["isOnCustomMenu"],
    isOnCustomMenu2: json["isOnCustomMenu2"] == null ? null : json["isOnCustomMenu2"],
    isOffReferralMenu: json["isOffReferralMenu"] == null ? null : json["isOffReferralMenu"],
    websiteFavicon: json["websiteFavicon"] == null ? null : json["websiteFavicon"],
    progressiveImg: json["progressive_img"] == null ? null : json["progressive_img"],
    progressiveImgMobile: json["progressive_img_mobile"] == null ? null : json["progressive_img_mobile"],
    websiteLogoMobile: json["websiteLogo_mobile"] == null ? null : json["websiteLogo_mobile"],
    websiteLogo: json["websiteLogo"] == null ? null : json["websiteLogo"],
    timeZone: json["time_zone"] == null ? null : json["time_zone"],
    initialDepositAmount: json["initial_deposit_amount"] == null ? null : json["initial_deposit_amount"],
    withdrawNewBank: json["withdraw_new_bank"] == null ? null : json["withdraw_new_bank"],
    depositNewBank: json["deposit_new_bank"] == null ? null : json["deposit_new_bank"],
    initialUsers: json["initial_users"] == null ? null : json["initial_users"],
    depositNotice: json["deposit_notice"] == null ? null : json["deposit_notice"],
    ewalletStatus: json["ewallet_status"] == null ? null : json["ewallet_status"],
    registerHasBank: json["register_has_bank"] == null ? null : json["register_has_bank"],
    registerHasEwallet: json["register_has_ewallet"] == null ? null : json["register_has_ewallet"],
    websiteSettingsIsNoHomeDefFooter: json["is_no_home_def_footer"] == null ? null : json["is_no_home_def_footer"],
    apkUrl: json["apk_url"],
    bankgroupAutoMode: json["bankgroup_auto_mode"] == null ? null : json["bankgroup_auto_mode"],
    apkQrCode: json["apk_qr_code"] == null ? null : json["apk_qr_code"],
    ampUrl: json["amp_url"] == null ? null : json["amp_url"],
    googleAnalyticsId: json["googleAnalyticsID"] == null ? null : json["googleAnalyticsID"],
    ownerVeriCode: json["ownerVeriCode"] == null ? null : json["ownerVeriCode"],
    pusherAppId: json["pusher_app_id"] == null ? null : json["pusher_app_id"],
    pusherKey: json["pusher_key"] == null ? null : json["pusher_key"],
    pusherSecret: json["pusher_secret"] == null ? null : json["pusher_secret"],
    pusherCluster: json["pusher_cluster"] == null ? null : json["pusher_cluster"],
    companyOn: json["companyOn"] == null ? null : json["companyOn"],
    pulsa: json["pulsa"] == null ? null : json["pulsa"],
    crypto: json["crypto"] == null ? null : json["crypto"],
    eWallet: json["e_wallet"] == null ? null : json["e_wallet"],
    currencyCode: json["currencyCode"] == null ? null : json["currencyCode"],
    agentId: json["agent_id"] == null ? null : json["agent_id"],
    isNoHomeDefFooter: json["isNoHomeDefFooter"] == null ? null : json["isNoHomeDefFooter"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "webTitle": webTitle == null ? null : webTitle,
    "PageTitle": pageTitle == null ? null : pageTitle,
    "googleAnalytics": googleAnalytics,
    "chatUrl": chatUrl == null ? null : chatUrl,
    "amp_redirect_url": ampRedirectUrl == null ? null : ampRedirectUrl,
    "livechatCode": livechatCode,
    "webUrl": webUrl == null ? null : webUrl,
    "websiteStatus": websiteStatus == null ? null : websiteStatus,
    "style_config_id2": styleConfigId2 == null ? null : styleConfigId2,
    "reason": reason,
    "chatLicence": chatLicence,
    "webHostSeo": webHostSeo,
    "canonicalUrl": canonicalUrl == null ? null : canonicalUrl,
    "isHas2ndPin": isHas2NdPin == null ? null : isHas2NdPin,
    "isMobileBottomBar": isMobileBottomBar == null ? null : isMobileBottomBar,
    "custom_menu_title": customMenuTitle == null ? null : customMenuTitle,
    "isOnCustomMenu": isOnCustomMenu == null ? null : isOnCustomMenu,
    "isOnCustomMenu2": isOnCustomMenu2 == null ? null : isOnCustomMenu2,
    "isOffReferralMenu": isOffReferralMenu == null ? null : isOffReferralMenu,
    "websiteFavicon": websiteFavicon == null ? null : websiteFavicon,
    "progressive_img": progressiveImg == null ? null : progressiveImg,
    "progressive_img_mobile": progressiveImgMobile == null ? null : progressiveImgMobile,
    "websiteLogo_mobile": websiteLogoMobile == null ? null : websiteLogoMobile,
    "websiteLogo": websiteLogo == null ? null : websiteLogo,
    "time_zone": timeZone == null ? null : timeZone,
    "initial_deposit_amount": initialDepositAmount == null ? null : initialDepositAmount,
    "withdraw_new_bank": withdrawNewBank == null ? null : withdrawNewBank,
    "deposit_new_bank": depositNewBank == null ? null : depositNewBank,
    "initial_users": initialUsers == null ? null : initialUsers,
    "deposit_notice": depositNotice == null ? null : depositNotice,
    "ewallet_status": ewalletStatus == null ? null : ewalletStatus,
    "register_has_bank": registerHasBank == null ? null : registerHasBank,
    "register_has_ewallet": registerHasEwallet == null ? null : registerHasEwallet,
    "is_no_home_def_footer": websiteSettingsIsNoHomeDefFooter == null ? null : websiteSettingsIsNoHomeDefFooter,
    "apk_url": apkUrl,
    "bankgroup_auto_mode": bankgroupAutoMode == null ? null : bankgroupAutoMode,
    "apk_qr_code": apkQrCode == null ? null : apkQrCode,
    "amp_url": ampUrl == null ? null : ampUrl,
    "googleAnalyticsID": googleAnalyticsId == null ? null : googleAnalyticsId,
    "ownerVeriCode": ownerVeriCode == null ? null : ownerVeriCode,
    "pusher_app_id": pusherAppId == null ? null : pusherAppId,
    "pusher_key": pusherKey == null ? null : pusherKey,
    "pusher_secret": pusherSecret == null ? null : pusherSecret,
    "pusher_cluster": pusherCluster == null ? null : pusherCluster,
    "companyOn": companyOn == null ? null : companyOn,
    "pulsa": pulsa == null ? null : pulsa,
    "crypto": crypto == null ? null : crypto,
    "e_wallet": eWallet == null ? null : eWallet,
    "currencyCode": currencyCode == null ? null : currencyCode,
    "agent_id": agentId == null ? null : agentId,
    "isNoHomeDefFooter": isNoHomeDefFooter == null ? null : isNoHomeDefFooter,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(required this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
*/
