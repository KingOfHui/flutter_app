class FoodListEntity {
	String msg;
	String traceID;
	String clientType;
	String code;
	FoodListData data;
	String success;

	FoodListEntity({this.msg, this.traceID, this.clientType, this.code, this.data, this.success});

	FoodListEntity.fromJson(Map<String, dynamic> json) {
		msg = json['msg'];
		traceID = json['traceID'];
		clientType = json['clientType'];
		code = json['code'];
		data = json['data'] != null ? new FoodListData.fromJson(json['data']) : null;
		success = json['success'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['msg'] = this.msg;
		data['traceID'] = this.traceID;
		data['clientType'] = this.clientType;
		data['code'] = this.code;
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		data['success'] = this.success;
		return data;
	}
}

class FoodListData {
	FoodListDataFoodsal foodSal;
	List<FoodListDataFoodtaglist> foodTagList;
	List<FoodListDataRecord> records;
	String version;
	String eBookVersionNo;

	FoodListData({this.foodSal, this.foodTagList, this.records, this.version, this.eBookVersionNo});

	FoodListData.fromJson(Map<String, dynamic> json) {
		foodSal = json['foodSal'] != null ? new FoodListDataFoodsal.fromJson(json['foodSal']) : null;
		if (json['foodTagList'] != null) {
			foodTagList = new List<FoodListDataFoodtaglist>();(json['foodTagList'] as List).forEach((v) { foodTagList.add(new FoodListDataFoodtaglist.fromJson(v)); });
		}
		if (json['records'] != null) {
			records = new List<FoodListDataRecord>();(json['records'] as List).forEach((v) { records.add(new FoodListDataRecord.fromJson(v)); });
		}
		version = json['version'];
		eBookVersionNo = json['EBookVersionNo'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.foodSal != null) {
      data['foodSal'] = this.foodSal.toJson();
    }
		if (this.foodTagList != null) {
      data['foodTagList'] =  this.foodTagList.map((v) => v.toJson()).toList();
    }
		if (this.records != null) {
      data['records'] =  this.records.map((v) => v.toJson()).toList();
    }
		data['version'] = this.version;
		data['EBookVersionNo'] = this.eBookVersionNo;
		return data;
	}
}

class FoodListDataFoodsal {
	List<String> hideFoodIDs;
	List<Null> showFoodIDs;

	FoodListDataFoodsal({this.hideFoodIDs, this.showFoodIDs});

	FoodListDataFoodsal.fromJson(Map<String, dynamic> json) {
		hideFoodIDs = json['hideFoodIDs']?.cast<String>();
		if (json['showFoodIDs'] != null) {
			showFoodIDs = new List<Null>();
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['hideFoodIDs'] = this.hideFoodIDs;
		if (this.showFoodIDs != null) {
      data['showFoodIDs'] =  [];
    }
		return data;
	}
}

class FoodListDataFoodtaglist {
	int actionTime;
	String paramsJson;
	int groupID;
	String foodIDs;
	int isActive;
	String tagName;
	String tagDesc;
	String itemID;
	String createBy;
	int foodCount;
	String tagType;
	int action;
	int shopID;
	List<FoodListDataFoodtaglistFoodtagrelate> foodTagRelates;
	int userVisable;

	FoodListDataFoodtaglist({this.actionTime, this.paramsJson, this.groupID, this.foodIDs, this.isActive, this.tagName, this.tagDesc, this.itemID, this.createBy, this.foodCount, this.tagType, this.action, this.shopID, this.foodTagRelates, this.userVisable});

	FoodListDataFoodtaglist.fromJson(Map<String, dynamic> json) {
		actionTime = json['actionTime'];
		paramsJson = json['paramsJson'];
		groupID = json['groupID'];
		foodIDs = json['foodIDs'];
		isActive = json['isActive'];
		tagName = json['tagName'];
		tagDesc = json['tagDesc'];
		itemID = json['itemID'];
		createBy = json['createBy'];
		foodCount = json['foodCount'];
		tagType = json['tagType'];
		action = json['action'];
		shopID = json['shopID'];
		if (json['foodTagRelates'] != null) {
			foodTagRelates = new List<FoodListDataFoodtaglistFoodtagrelate>();(json['foodTagRelates'] as List).forEach((v) { foodTagRelates.add(new FoodListDataFoodtaglistFoodtagrelate.fromJson(v)); });
		}
		userVisable = json['userVisable'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['actionTime'] = this.actionTime;
		data['paramsJson'] = this.paramsJson;
		data['groupID'] = this.groupID;
		data['foodIDs'] = this.foodIDs;
		data['isActive'] = this.isActive;
		data['tagName'] = this.tagName;
		data['tagDesc'] = this.tagDesc;
		data['itemID'] = this.itemID;
		data['createBy'] = this.createBy;
		data['foodCount'] = this.foodCount;
		data['tagType'] = this.tagType;
		data['action'] = this.action;
		data['shopID'] = this.shopID;
		if (this.foodTagRelates != null) {
      data['foodTagRelates'] =  this.foodTagRelates.map((v) => v.toJson()).toList();
    }
		data['userVisable'] = this.userVisable;
		return data;
	}
}

class FoodListDataFoodtaglistFoodtagrelate {
	String isJoin;
	String relateCount;
	String foodID;

	FoodListDataFoodtaglistFoodtagrelate({this.isJoin, this.relateCount, this.foodID});

	FoodListDataFoodtaglistFoodtagrelate.fromJson(Map<String, dynamic> json) {
		isJoin = json['isJoin'];
		relateCount = json['relateCount'];
		foodID = json['foodID'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['isJoin'] = this.isJoin;
		data['relateCount'] = this.relateCount;
		data['foodID'] = this.foodID;
		return data;
	}
}

class FoodListDataRecord {
	int isRecommend;
	String foodTagIDs;
	int isAutoAdd;
	int salesCount;
	String batchingFoodCategoryKey;
	String py;
	int isDiscount;
	int recentClickAmount;
	int isActive;
	int foodSortIndex;
	int initClickAmount;
	int isBatching;
	String foodName;
	String makingMethodList;
	double minOrderCount;
	String foodOnlineCategoryName;
	String foodCategoryEnName;
	int makingMethodIsMultiple;
	String clickAlertMess;
	String imgePath;
	String foodCategoryKey;
	int isNeedConfirmFoodNumber;
	String foodEnName;
	double salesCommission;
	String foodSubjectName;
	int isShowInEBook;
	double imageHWP;
	int isSingleSale;
	String material2durl;
	String foodID;
	int takeawayTag;
	String parentFoodID;
	int batchingIsFoodNumberRate;
	String batchingFoodCategoryID;
	double taxRate;
	String foodCategoryID;
	int isOpen;
	String tasteList;
	String material3durl;
	String foodSubjectKey;
	int isNews;
	int shopID;
	double starLevel;
	double incrementUnit;
	String unitAdjuvant;
	String foodSubjectCode;
	int sortIndex;
	int tasteIsRequired;
	int hotTag;
	int isHasImage;
	String description;
	List<FoodListDataRecordsUnit> units;
	String foodCategoryCode;
	String zXJ;
	String adsID;
	int isSpecialty;
	String foodKey;
	int popularity;
	String foodKeyElementLst;
	String sourceFoodID;
	String foodAliasName;
	int tasteIsMultiple;
	String foodOnlineCategoryKey;
	int makingMethodIsRequired;
	double material3dhwp;
	int detailSplit;
	int printSortIndex;
	String batchingFoodTagID;
	String foodCategoryName;
	int isSetFood;
	int actualClickAmount;
	String foodOnlineCategoryID;
	int workingLunchTag;
	String departmentKeyLst;
	int isComments;
	String departmentKey5;
	double material2dhwp;
	String foodCategoryGroupName;
	String foodMnemonicCode;
	int setPerson;
	FoodListDataRecordsSetfooddetailjson setFoodDetailJson;
	double takeoutPackagingFee;
	String departmentKey4;
	String departmentKey3;
	String foodCode;
	int isTempFood;
	String departmentKey2;
	int isCanRefund;
	String departmentKey1;

	FoodListDataRecord({this.isRecommend, this.foodTagIDs, this.isAutoAdd, this.salesCount, this.batchingFoodCategoryKey, this.py, this.isDiscount, this.recentClickAmount, this.isActive, this.foodSortIndex, this.initClickAmount, this.isBatching, this.foodName, this.makingMethodList, this.minOrderCount, this.foodOnlineCategoryName, this.foodCategoryEnName, this.makingMethodIsMultiple, this.clickAlertMess, this.imgePath, this.foodCategoryKey, this.isNeedConfirmFoodNumber, this.foodEnName, this.salesCommission, this.foodSubjectName, this.isShowInEBook, this.imageHWP, this.isSingleSale, this.material2durl, this.foodID, this.takeawayTag, this.parentFoodID, this.batchingIsFoodNumberRate, this.batchingFoodCategoryID, this.taxRate, this.foodCategoryID, this.isOpen, this.tasteList, this.material3durl, this.foodSubjectKey, this.isNews, this.shopID, this.starLevel, this.incrementUnit, this.unitAdjuvant, this.foodSubjectCode, this.sortIndex, this.tasteIsRequired, this.hotTag, this.isHasImage, this.description, this.units, this.foodCategoryCode, this.zXJ, this.adsID, this.isSpecialty, this.foodKey, this.popularity, this.foodKeyElementLst, this.sourceFoodID, this.foodAliasName, this.tasteIsMultiple, this.foodOnlineCategoryKey, this.makingMethodIsRequired, this.material3dhwp, this.detailSplit, this.printSortIndex, this.batchingFoodTagID, this.foodCategoryName, this.isSetFood, this.actualClickAmount, this.foodOnlineCategoryID, this.workingLunchTag, this.departmentKeyLst, this.isComments, this.departmentKey5, this.material2dhwp, this.foodCategoryGroupName, this.foodMnemonicCode, this.setPerson, this.setFoodDetailJson, this.takeoutPackagingFee, this.departmentKey4, this.departmentKey3, this.foodCode, this.isTempFood, this.departmentKey2, this.isCanRefund, this.departmentKey1});

	FoodListDataRecord.fromJson(Map<String, dynamic> json) {
		isRecommend = json['isRecommend'];
		foodTagIDs = json['foodTagIDs'];
		isAutoAdd = json['isAutoAdd'];
		salesCount = json['salesCount'];
		batchingFoodCategoryKey = json['batchingFoodCategoryKey'];
		py = json['py'];
		isDiscount = json['isDiscount'];
		recentClickAmount = json['recentClickAmount'];
		isActive = json['isActive'];
		foodSortIndex = json['foodSortIndex'];
		initClickAmount = json['initClickAmount'];
		isBatching = json['isBatching'];
		foodName = json['foodName'];
		makingMethodList = json['makingMethodList'];
		minOrderCount = json['minOrderCount'];
		foodOnlineCategoryName = json['foodOnlineCategoryName'];
		foodCategoryEnName = json['foodCategoryEnName'];
		makingMethodIsMultiple = json['makingMethodIsMultiple'];
		clickAlertMess = json['clickAlertMess'];
		imgePath = json['imgePath'];
		foodCategoryKey = json['foodCategoryKey'];
		isNeedConfirmFoodNumber = json['isNeedConfirmFoodNumber'];
		foodEnName = json['foodEnName'];
		salesCommission = json['salesCommission'];
		foodSubjectName = json['foodSubjectName'];
		isShowInEBook = json['isShowInEBook'];
		imageHWP = json['imageHWP'];
		isSingleSale = json['isSingleSale'];
		material2durl = json['material_2DUrl'];
		foodID = json['foodID'];
		takeawayTag = json['takeawayTag'];
		parentFoodID = json['parentFoodID'];
		batchingIsFoodNumberRate = json['batchingIsFoodNumberRate'];
		batchingFoodCategoryID = json['batchingFoodCategoryID'];
		taxRate = json['taxRate'];
		foodCategoryID = json['foodCategoryID'];
		isOpen = json['isOpen'];
		tasteList = json['tasteList'];
		material3durl = json['material_3DUrl'];
		foodSubjectKey = json['foodSubjectKey'];
		isNews = json['isNews'];
		shopID = json['shopID'];
		starLevel = json['starLevel'];
		incrementUnit = json['incrementUnit'];
		unitAdjuvant = json['unitAdjuvant'];
		foodSubjectCode = json['foodSubjectCode'];
		sortIndex = json['sortIndex'];
		tasteIsRequired = json['tasteIsRequired'];
		hotTag = json['hotTag'];
		isHasImage = json['isHasImage'];
		description = json['description'];
		if (json['units'] != null) {
			units = new List<FoodListDataRecordsUnit>();(json['units'] as List).forEach((v) { units.add(new FoodListDataRecordsUnit.fromJson(v)); });
		}
		foodCategoryCode = json['foodCategoryCode'];
		zXJ = json['ZXJ'];
		adsID = json['adsID'];
		isSpecialty = json['isSpecialty'];
		foodKey = json['foodKey'];
		popularity = json['popularity'];
		foodKeyElementLst = json['foodKeyElementLst'];
		sourceFoodID = json['sourceFoodID'];
		foodAliasName = json['foodAliasName'];
		tasteIsMultiple = json['tasteIsMultiple'];
		foodOnlineCategoryKey = json['foodOnlineCategoryKey'];
		makingMethodIsRequired = json['makingMethodIsRequired'];
		material3dhwp = json['material_3DHWP'];
		detailSplit = json['detailSplit'];
		printSortIndex = json['printSortIndex'];
		batchingFoodTagID = json['batchingFoodTagID'];
		foodCategoryName = json['foodCategoryName'];
		isSetFood = json['isSetFood'];
		actualClickAmount = json['actualClickAmount'];
		foodOnlineCategoryID = json['foodOnlineCategoryID'];
		workingLunchTag = json['workingLunchTag'];
		departmentKeyLst = json['departmentKeyLst'];
		isComments = json['isComments'];
		departmentKey5 = json['departmentKey5'];
		material2dhwp = json['material_2DHWP'];
		foodCategoryGroupName = json['foodCategoryGroupName'];
		foodMnemonicCode = json['foodMnemonicCode'];
		setPerson = json['setPerson'];
		setFoodDetailJson = json['setFoodDetailJson'] != null ? new FoodListDataRecordsSetfooddetailjson.fromJson(json['setFoodDetailJson']) : null;
		takeoutPackagingFee = json['takeoutPackagingFee'];
		departmentKey4 = json['departmentKey4'];
		departmentKey3 = json['departmentKey3'];
		foodCode = json['foodCode'];
		isTempFood = json['isTempFood'];
		departmentKey2 = json['departmentKey2'];
		isCanRefund = json['isCanRefund'];
		departmentKey1 = json['departmentKey1'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['isRecommend'] = this.isRecommend;
		data['foodTagIDs'] = this.foodTagIDs;
		data['isAutoAdd'] = this.isAutoAdd;
		data['salesCount'] = this.salesCount;
		data['batchingFoodCategoryKey'] = this.batchingFoodCategoryKey;
		data['py'] = this.py;
		data['isDiscount'] = this.isDiscount;
		data['recentClickAmount'] = this.recentClickAmount;
		data['isActive'] = this.isActive;
		data['foodSortIndex'] = this.foodSortIndex;
		data['initClickAmount'] = this.initClickAmount;
		data['isBatching'] = this.isBatching;
		data['foodName'] = this.foodName;
		data['makingMethodList'] = this.makingMethodList;
		data['minOrderCount'] = this.minOrderCount;
		data['foodOnlineCategoryName'] = this.foodOnlineCategoryName;
		data['foodCategoryEnName'] = this.foodCategoryEnName;
		data['makingMethodIsMultiple'] = this.makingMethodIsMultiple;
		data['clickAlertMess'] = this.clickAlertMess;
		data['imgePath'] = this.imgePath;
		data['foodCategoryKey'] = this.foodCategoryKey;
		data['isNeedConfirmFoodNumber'] = this.isNeedConfirmFoodNumber;
		data['foodEnName'] = this.foodEnName;
		data['salesCommission'] = this.salesCommission;
		data['foodSubjectName'] = this.foodSubjectName;
		data['isShowInEBook'] = this.isShowInEBook;
		data['imageHWP'] = this.imageHWP;
		data['isSingleSale'] = this.isSingleSale;
		data['material_2DUrl'] = this.material2durl;
		data['foodID'] = this.foodID;
		data['takeawayTag'] = this.takeawayTag;
		data['parentFoodID'] = this.parentFoodID;
		data['batchingIsFoodNumberRate'] = this.batchingIsFoodNumberRate;
		data['batchingFoodCategoryID'] = this.batchingFoodCategoryID;
		data['taxRate'] = this.taxRate;
		data['foodCategoryID'] = this.foodCategoryID;
		data['isOpen'] = this.isOpen;
		data['tasteList'] = this.tasteList;
		data['material_3DUrl'] = this.material3durl;
		data['foodSubjectKey'] = this.foodSubjectKey;
		data['isNews'] = this.isNews;
		data['shopID'] = this.shopID;
		data['starLevel'] = this.starLevel;
		data['incrementUnit'] = this.incrementUnit;
		data['unitAdjuvant'] = this.unitAdjuvant;
		data['foodSubjectCode'] = this.foodSubjectCode;
		data['sortIndex'] = this.sortIndex;
		data['tasteIsRequired'] = this.tasteIsRequired;
		data['hotTag'] = this.hotTag;
		data['isHasImage'] = this.isHasImage;
		data['description'] = this.description;
		if (this.units != null) {
      data['units'] =  this.units.map((v) => v.toJson()).toList();
    }
		data['foodCategoryCode'] = this.foodCategoryCode;
		data['ZXJ'] = this.zXJ;
		data['adsID'] = this.adsID;
		data['isSpecialty'] = this.isSpecialty;
		data['foodKey'] = this.foodKey;
		data['popularity'] = this.popularity;
		data['foodKeyElementLst'] = this.foodKeyElementLst;
		data['sourceFoodID'] = this.sourceFoodID;
		data['foodAliasName'] = this.foodAliasName;
		data['tasteIsMultiple'] = this.tasteIsMultiple;
		data['foodOnlineCategoryKey'] = this.foodOnlineCategoryKey;
		data['makingMethodIsRequired'] = this.makingMethodIsRequired;
		data['material_3DHWP'] = this.material3dhwp;
		data['detailSplit'] = this.detailSplit;
		data['printSortIndex'] = this.printSortIndex;
		data['batchingFoodTagID'] = this.batchingFoodTagID;
		data['foodCategoryName'] = this.foodCategoryName;
		data['isSetFood'] = this.isSetFood;
		data['actualClickAmount'] = this.actualClickAmount;
		data['foodOnlineCategoryID'] = this.foodOnlineCategoryID;
		data['workingLunchTag'] = this.workingLunchTag;
		data['departmentKeyLst'] = this.departmentKeyLst;
		data['isComments'] = this.isComments;
		data['departmentKey5'] = this.departmentKey5;
		data['material_2DHWP'] = this.material2dhwp;
		data['foodCategoryGroupName'] = this.foodCategoryGroupName;
		data['foodMnemonicCode'] = this.foodMnemonicCode;
		data['setPerson'] = this.setPerson;
		if (this.setFoodDetailJson != null) {
      data['setFoodDetailJson'] = this.setFoodDetailJson.toJson();
    }
		data['takeoutPackagingFee'] = this.takeoutPackagingFee;
		data['departmentKey4'] = this.departmentKey4;
		data['departmentKey3'] = this.departmentKey3;
		data['foodCode'] = this.foodCode;
		data['isTempFood'] = this.isTempFood;
		data['departmentKey2'] = this.departmentKey2;
		data['isCanRefund'] = this.isCanRefund;
		data['departmentKey1'] = this.departmentKey1;
		return data;
	}
}

class FoodListDataRecordsUnit {
	double onlineZtPrice;
	double originalPrice;
	double specialPrice5;
	String unitKey;
	double specialPrice4;
	String unit;
	double specialPrice6;
	double onlineTsPrice;
	double price;
	double specialPrice3;
	double specialPrice2;
	String unitCode;
	double vipPrice;
	double onlineWmPrice;
	double wdPrice;
	double specialPrice;

	FoodListDataRecordsUnit({this.onlineZtPrice, this.originalPrice, this.specialPrice5, this.unitKey, this.specialPrice4, this.unit, this.specialPrice6, this.onlineTsPrice, this.price, this.specialPrice3, this.specialPrice2, this.unitCode, this.vipPrice, this.onlineWmPrice, this.wdPrice, this.specialPrice});

	FoodListDataRecordsUnit.fromJson(Map<String, dynamic> json) {
		onlineZtPrice = json['onlineZtPrice'];
		originalPrice = json['originalPrice'];
		specialPrice5 = json['specialPrice5'];
		unitKey = json['unitKey'];
		specialPrice4 = json['specialPrice4'];
		unit = json['unit'];
		specialPrice6 = json['specialPrice6'];
		onlineTsPrice = json['onlineTsPrice'];
		price = json['price'];
		specialPrice3 = json['specialPrice3'];
		specialPrice2 = json['specialPrice2'];
		unitCode = json['unitCode'];
		vipPrice = json['vipPrice'];
		onlineWmPrice = json['onlineWmPrice'];
		wdPrice = json['wdPrice'];
		specialPrice = json['specialPrice'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['onlineZtPrice'] = this.onlineZtPrice;
		data['originalPrice'] = this.originalPrice;
		data['specialPrice5'] = this.specialPrice5;
		data['unitKey'] = this.unitKey;
		data['specialPrice4'] = this.specialPrice4;
		data['unit'] = this.unit;
		data['specialPrice6'] = this.specialPrice6;
		data['onlineTsPrice'] = this.onlineTsPrice;
		data['price'] = this.price;
		data['specialPrice3'] = this.specialPrice3;
		data['specialPrice2'] = this.specialPrice2;
		data['unitCode'] = this.unitCode;
		data['vipPrice'] = this.vipPrice;
		data['onlineWmPrice'] = this.onlineWmPrice;
		data['wdPrice'] = this.wdPrice;
		data['specialPrice'] = this.specialPrice;
		return data;
	}
}

class FoodListDataRecordsSetfooddetailjson {
	List<FoodListDataRecordsSetfooddetailjsonFoodlst> foodLst;

	FoodListDataRecordsSetfooddetailjson({this.foodLst});

	FoodListDataRecordsSetfooddetailjson.fromJson(Map<String, dynamic> json) {
		if (json['foodLst'] != null) {
			foodLst = new List<FoodListDataRecordsSetfooddetailjsonFoodlst>();(json['foodLst'] as List).forEach((v) { foodLst.add(new FoodListDataRecordsSetfooddetailjsonFoodlst.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.foodLst != null) {
      data['foodLst'] =  this.foodLst.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class FoodListDataRecordsSetfooddetailjsonFoodlst {
	int canSwitch;
	int chooseCount;
	String foodCategoryName;
	List<FoodListDataRecordsSetfooddetailjsonFoodlstItem> items;

	FoodListDataRecordsSetfooddetailjsonFoodlst({this.canSwitch, this.chooseCount, this.foodCategoryName, this.items});

	FoodListDataRecordsSetfooddetailjsonFoodlst.fromJson(Map<String, dynamic> json) {
		canSwitch = json['canSwitch'];
		chooseCount = json['chooseCount'];
		foodCategoryName = json['foodCategoryName'];
		if (json['items'] != null) {
			items = new List<FoodListDataRecordsSetfooddetailjsonFoodlstItem>();(json['items'] as List).forEach((v) { items.add(new FoodListDataRecordsSetfooddetailjsonFoodlstItem.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['canSwitch'] = this.canSwitch;
		data['chooseCount'] = this.chooseCount;
		data['foodCategoryName'] = this.foodCategoryName;
		if (this.items != null) {
      data['items'] =  this.items.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class FoodListDataRecordsSetfooddetailjsonFoodlstItem {
	String unitKey;
	String foodKey;
	int number;
	String foodName;
	String unit;
	var fulFilledPrice;
	var price;
	var addPrice;
	int foodEstimateCost;
	int selected;

	FoodListDataRecordsSetfooddetailjsonFoodlstItem({this.unitKey, this.foodKey, this.number, this.foodName, this.unit, this.fulFilledPrice, this.price, this.addPrice, this.foodEstimateCost, this.selected});

	FoodListDataRecordsSetfooddetailjsonFoodlstItem.fromJson(Map<String, dynamic> json) {
		unitKey = json['unitKey'];
		foodKey = json['foodKey'];
		number = json['number'];
		foodName = json['foodName'];
		unit = json['unit'];
		fulFilledPrice = json['fulFilledPrice'];
		price = json['price'];
		addPrice = json['addPrice'];
		foodEstimateCost = json['foodEstimateCost'];
		selected = json['selected'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['unitKey'] = this.unitKey;
		data['foodKey'] = this.foodKey;
		data['number'] = this.number;
		data['foodName'] = this.foodName;
		data['unit'] = this.unit;
		data['fulFilledPrice'] = this.fulFilledPrice;
		data['price'] = this.price;
		data['addPrice'] = this.addPrice;
		data['foodEstimateCost'] = this.foodEstimateCost;
		data['selected'] = this.selected;
		return data;
	}
}
