class UserEntity {
	String msg;
	String traceID;
	String clientType;
	String code;
	UserData data;
	String success;

	UserEntity({this.msg, this.traceID, this.clientType, this.code, this.data, this.success});

	UserEntity.fromJson(Map<String, dynamic> json) {
		msg = json['msg'];
		traceID = json['traceID'];
		clientType = json['clientType'];
		code = json['code'];
		data = json['data'] != null ? new UserData.fromJson(json['data']) : null;
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

class UserData {
	int hasDailyEnd;
	UserDataRecords records;
	UserDataSaasiniinfo saasIniInfo;
	String accessToken;

	UserData({this.hasDailyEnd, this.records, this.saasIniInfo, this.accessToken});

	UserData.fromJson(Map<String, dynamic> json) {
		hasDailyEnd = json['hasDailyEnd'];
		records = json['records'] != null ? new UserDataRecords.fromJson(json['records']) : null;
		saasIniInfo = json['saasIniInfo'] != null ? new UserDataSaasiniinfo.fromJson(json['saasIniInfo']) : null;
		accessToken = json['accessToken'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['hasDailyEnd'] = this.hasDailyEnd;
		if (this.records != null) {
      data['records'] = this.records.toJson();
    }
		if (this.saasIniInfo != null) {
      data['saasIniInfo'] = this.saasIniInfo.toJson();
    }
		data['accessToken'] = this.accessToken;
		return data;
	}
}

class UserDataRecords {
	String checkoutBy;
	String siteBizModel;
	String empToken;
	String empMobile;
	int mobileOrderingQuickModeAutoSum;
	String roleIDLst;
	String empEmail;
	String kitchenPrintBillTypeLst;
	int practiceMode;
	String photoImage;
	String deviceName;
	double maxFreeAmount;
	String siteAreaKeyLst;
	String accountStatus;
	int mobileOrderingCashPayIsActive;
	String positionName;
	int loginTime;
	String empName;
	String checkoutStatFoodCategoryKeyLst;
	String notSubjectList;
	String localPosLoginPWD;
	String isOpenTable;
	String empRemark;
	String foodCategoryIDs;
	int orderFoodMultiUnitFoodMergeShowIsActive;
	String empCardNo;
	String padNo;
	String siteCode;
	String iDCard;
	String notRightLst;
	int groupID;
	int orderFoodShowAllFoodIsActive;
	String deviceKey;
	double maxDiscountRate;
	String siteFoodCategoryKeyLst;
	String rightIDLst;
	String roleNameLst;
	String notDiscountRuleLst;
	int orderFoodConfirmNumberAfterPrintedIsActive;
	String empCode;
	String kitchenGod;
	int mobileOrderingQuickMode;
	String empKey;
	int shopID;
	String giftFoodTagID;
	int orderFoodShowCookWayIsActive;

	UserDataRecords({this.checkoutBy, this.siteBizModel, this.empToken, this.empMobile, this.mobileOrderingQuickModeAutoSum, this.roleIDLst, this.empEmail, this.kitchenPrintBillTypeLst, this.practiceMode, this.photoImage, this.deviceName, this.maxFreeAmount, this.siteAreaKeyLst, this.accountStatus, this.mobileOrderingCashPayIsActive, this.positionName, this.loginTime, this.empName, this.checkoutStatFoodCategoryKeyLst, this.notSubjectList, this.localPosLoginPWD, this.isOpenTable, this.empRemark, this.foodCategoryIDs, this.orderFoodMultiUnitFoodMergeShowIsActive, this.empCardNo, this.padNo, this.siteCode, this.iDCard, this.notRightLst, this.groupID, this.orderFoodShowAllFoodIsActive, this.deviceKey, this.maxDiscountRate, this.siteFoodCategoryKeyLst, this.rightIDLst, this.roleNameLst, this.notDiscountRuleLst, this.orderFoodConfirmNumberAfterPrintedIsActive, this.empCode, this.kitchenGod, this.mobileOrderingQuickMode, this.empKey, this.shopID, this.giftFoodTagID, this.orderFoodShowCookWayIsActive});

	UserDataRecords.fromJson(Map<String, dynamic> json) {
		checkoutBy = json['checkoutBy'];
		siteBizModel = json['siteBizModel'];
		empToken = json['empToken'];
		empMobile = json['empMobile'];
		mobileOrderingQuickModeAutoSum = json['mobileOrderingQuickModeAutoSum'];
		roleIDLst = json['roleIDLst'];
		empEmail = json['empEmail'];
		kitchenPrintBillTypeLst = json['KitchenPrintBillTypeLst'];
		practiceMode = json['practiceMode'];
		photoImage = json['photoImage'];
		deviceName = json['deviceName'];
		maxFreeAmount = json['maxFreeAmount'];
		siteAreaKeyLst = json['siteAreaKeyLst'];
		accountStatus = json['accountStatus'];
		mobileOrderingCashPayIsActive = json['mobileOrderingCashPayIsActive'];
		positionName = json['positionName'];
		loginTime = json['loginTime'];
		empName = json['empName'];
		checkoutStatFoodCategoryKeyLst = json['CheckoutStatFoodCategoryKeyLst'];
		notSubjectList = json['notSubjectList'];
		localPosLoginPWD = json['localPosLoginPWD'];
		isOpenTable = json['isOpenTable'];
		empRemark = json['empRemark'];
		foodCategoryIDs = json['foodCategoryIDs'];
		orderFoodMultiUnitFoodMergeShowIsActive = json['orderFoodMultiUnitFoodMergeShowIsActive'];
		empCardNo = json['empCardNo'];
		padNo = json['padNo'];
		siteCode = json['siteCode'];
		iDCard = json['IDCard'];
		notRightLst = json['notRightLst'];
		groupID = json['groupID'];
		orderFoodShowAllFoodIsActive = json['orderFoodShowAllFoodIsActive'];
		deviceKey = json['deviceKey'];
		maxDiscountRate = json['maxDiscountRate'];
		siteFoodCategoryKeyLst = json['siteFoodCategoryKeyLst'];
		rightIDLst = json['rightIDLst'];
		roleNameLst = json['roleNameLst'];
		notDiscountRuleLst = json['notDiscountRuleLst'];
		orderFoodConfirmNumberAfterPrintedIsActive = json['orderFoodConfirmNumberAfterPrintedIsActive'];
		empCode = json['empCode'];
		kitchenGod = json['kitchenGod'];
		mobileOrderingQuickMode = json['mobileOrderingQuickMode'];
		empKey = json['empKey'];
		shopID = json['shopID'];
		giftFoodTagID = json['giftFoodTagID'];
		orderFoodShowCookWayIsActive = json['orderFoodShowCookWayIsActive'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['checkoutBy'] = this.checkoutBy;
		data['siteBizModel'] = this.siteBizModel;
		data['empToken'] = this.empToken;
		data['empMobile'] = this.empMobile;
		data['mobileOrderingQuickModeAutoSum'] = this.mobileOrderingQuickModeAutoSum;
		data['roleIDLst'] = this.roleIDLst;
		data['empEmail'] = this.empEmail;
		data['KitchenPrintBillTypeLst'] = this.kitchenPrintBillTypeLst;
		data['practiceMode'] = this.practiceMode;
		data['photoImage'] = this.photoImage;
		data['deviceName'] = this.deviceName;
		data['maxFreeAmount'] = this.maxFreeAmount;
		data['siteAreaKeyLst'] = this.siteAreaKeyLst;
		data['accountStatus'] = this.accountStatus;
		data['mobileOrderingCashPayIsActive'] = this.mobileOrderingCashPayIsActive;
		data['positionName'] = this.positionName;
		data['loginTime'] = this.loginTime;
		data['empName'] = this.empName;
		data['CheckoutStatFoodCategoryKeyLst'] = this.checkoutStatFoodCategoryKeyLst;
		data['notSubjectList'] = this.notSubjectList;
		data['localPosLoginPWD'] = this.localPosLoginPWD;
		data['isOpenTable'] = this.isOpenTable;
		data['empRemark'] = this.empRemark;
		data['foodCategoryIDs'] = this.foodCategoryIDs;
		data['orderFoodMultiUnitFoodMergeShowIsActive'] = this.orderFoodMultiUnitFoodMergeShowIsActive;
		data['empCardNo'] = this.empCardNo;
		data['padNo'] = this.padNo;
		data['siteCode'] = this.siteCode;
		data['IDCard'] = this.iDCard;
		data['notRightLst'] = this.notRightLst;
		data['groupID'] = this.groupID;
		data['orderFoodShowAllFoodIsActive'] = this.orderFoodShowAllFoodIsActive;
		data['deviceKey'] = this.deviceKey;
		data['maxDiscountRate'] = this.maxDiscountRate;
		data['siteFoodCategoryKeyLst'] = this.siteFoodCategoryKeyLst;
		data['rightIDLst'] = this.rightIDLst;
		data['roleNameLst'] = this.roleNameLst;
		data['notDiscountRuleLst'] = this.notDiscountRuleLst;
		data['orderFoodConfirmNumberAfterPrintedIsActive'] = this.orderFoodConfirmNumberAfterPrintedIsActive;
		data['empCode'] = this.empCode;
		data['kitchenGod'] = this.kitchenGod;
		data['mobileOrderingQuickMode'] = this.mobileOrderingQuickMode;
		data['empKey'] = this.empKey;
		data['shopID'] = this.shopID;
		data['giftFoodTagID'] = this.giftFoodTagID;
		data['orderFoodShowCookWayIsActive'] = this.orderFoodShowCookWayIsActive;
		return data;
	}
}

class UserDataSaasiniinfo {
	String javaServerPort;
	String windowWidth;
	String pageSize;
	String serverAddress;
	String shopName;
	String kDSHandle;
	String portName;
	String autoRun;
	String localPrint;
	String lineMaxCharCount;
	String cityName;
	String clientIP;
	String enable;
	String tel;
	String isJavaSvr;
	String lDBH;
	String aPIHost;
	String address;
	String javaSaaSPatchVersion;
	String windowLeft;
	String windowTop;
	String lServerVersion;
	String groupID;
	String offsetX;
	String deviceKey;
	String printerKey;
	String myChromeHandle;
	String windowHeight;
	String mustUpdateTime;
	String hideTrayWnd;
	String printerName;
	String empCode;
	String serverName;
	String windowWidht;
	String shopID;
	String fullScreen;
	String serverPort;
	String portType;

	UserDataSaasiniinfo({this.javaServerPort, this.windowWidth, this.pageSize, this.serverAddress, this.shopName, this.kDSHandle, this.portName, this.autoRun, this.localPrint, this.lineMaxCharCount, this.cityName, this.clientIP, this.enable, this.tel, this.isJavaSvr, this.lDBH, this.aPIHost, this.address, this.javaSaaSPatchVersion, this.windowLeft, this.windowTop, this.lServerVersion, this.groupID, this.offsetX, this.deviceKey, this.printerKey, this.myChromeHandle, this.windowHeight, this.mustUpdateTime, this.hideTrayWnd, this.printerName, this.empCode, this.serverName, this.windowWidht, this.shopID, this.fullScreen, this.serverPort, this.portType});

	UserDataSaasiniinfo.fromJson(Map<String, dynamic> json) {
		javaServerPort = json['JavaServerPort'];
		windowWidth = json['WindowWidth'];
		pageSize = json['PageSize'];
		serverAddress = json['ServerAddress'];
		shopName = json['shopName'];
		kDSHandle = json['KDSHandle'];
		portName = json['PortName'];
		autoRun = json['AutoRun'];
		localPrint = json['LocalPrint'];
		lineMaxCharCount = json['LineMaxCharCount'];
		cityName = json['cityName'];
		clientIP = json['clientIP'];
		enable = json['Enable'];
		tel = json['tel'];
		isJavaSvr = json['isJavaSvr'];
		lDBH = json['LDBH'];
		aPIHost = json['APIHost'];
		address = json['address'];
		javaSaaSPatchVersion = json['JavaSaaSPatchVersion'];
		windowLeft = json['WindowLeft'];
		windowTop = json['WindowTop'];
		lServerVersion = json['LServerVersion'];
		groupID = json['groupID'];
		offsetX = json['OffsetX'];
		deviceKey = json['deviceKey'];
		printerKey = json['PrinterKey'];
		myChromeHandle = json['MyChromeHandle'];
		windowHeight = json['WindowHeight'];
		mustUpdateTime = json['mustUpdateTime'];
		hideTrayWnd = json['HideTrayWnd'];
		printerName = json['PrinterName'];
		empCode = json['empCode'];
		serverName = json['ServerName'];
		windowWidht = json['WindowWidht'];
		shopID = json['shopID'];
		fullScreen = json['FullScreen'];
		serverPort = json['ServerPort'];
		portType = json['PortType'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['JavaServerPort'] = this.javaServerPort;
		data['WindowWidth'] = this.windowWidth;
		data['PageSize'] = this.pageSize;
		data['ServerAddress'] = this.serverAddress;
		data['shopName'] = this.shopName;
		data['KDSHandle'] = this.kDSHandle;
		data['PortName'] = this.portName;
		data['AutoRun'] = this.autoRun;
		data['LocalPrint'] = this.localPrint;
		data['LineMaxCharCount'] = this.lineMaxCharCount;
		data['cityName'] = this.cityName;
		data['clientIP'] = this.clientIP;
		data['Enable'] = this.enable;
		data['tel'] = this.tel;
		data['isJavaSvr'] = this.isJavaSvr;
		data['LDBH'] = this.lDBH;
		data['APIHost'] = this.aPIHost;
		data['address'] = this.address;
		data['JavaSaaSPatchVersion'] = this.javaSaaSPatchVersion;
		data['WindowLeft'] = this.windowLeft;
		data['WindowTop'] = this.windowTop;
		data['LServerVersion'] = this.lServerVersion;
		data['groupID'] = this.groupID;
		data['OffsetX'] = this.offsetX;
		data['deviceKey'] = this.deviceKey;
		data['PrinterKey'] = this.printerKey;
		data['MyChromeHandle'] = this.myChromeHandle;
		data['WindowHeight'] = this.windowHeight;
		data['mustUpdateTime'] = this.mustUpdateTime;
		data['HideTrayWnd'] = this.hideTrayWnd;
		data['PrinterName'] = this.printerName;
		data['empCode'] = this.empCode;
		data['ServerName'] = this.serverName;
		data['WindowWidht'] = this.windowWidht;
		data['shopID'] = this.shopID;
		data['FullScreen'] = this.fullScreen;
		data['ServerPort'] = this.serverPort;
		data['PortType'] = this.portType;
		return data;
	}
}
