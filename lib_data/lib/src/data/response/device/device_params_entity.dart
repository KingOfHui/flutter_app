class DeviceParamsEntity {
	String msg;
	String traceID;
	String clientType;
	String code;
	DeviceParamsData data;
	int deviceCount;
	String success;

	DeviceParamsEntity({this.msg, this.traceID, this.clientType, this.code, this.data, this.deviceCount, this.success});

	DeviceParamsEntity.fromJson(Map<String, dynamic> json) {
		msg = json['msg'];
		traceID = json['traceID'];
		clientType = json['clientType'];
		code = json['code'];
		data = json['data'] != null ? new DeviceParamsData.fromJson(json['data']) : null;
		deviceCount = json['deviceCount'];
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
		data['deviceCount'] = this.deviceCount;
		data['success'] = this.success;
		return data;
	}
}

class DeviceParamsData {
	List<DeviceParamsDataRecord> records;
	int orderCount;
	String version;

	DeviceParamsData({this.records, this.orderCount, this.version});

	DeviceParamsData.fromJson(Map<String, dynamic> json) {
		if (json['records'] != null) {
			records = new List<DeviceParamsDataRecord>();(json['records'] as List).forEach((v) { records.add(new DeviceParamsDataRecord.fromJson(v)); });
		}
		orderCount = json['orderCount'];
		version = json['version'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.records != null) {
      data['records'] =  this.records.map((v) => v.toJson()).toList();
    }
		data['orderCount'] = this.orderCount;
		data['version'] = this.version;
		return data;
	}
}

class DeviceParamsDataRecord {
	String orderType;
	int firstRunTime;
	String dCDPrinterPortType;
	String shellCurrVersionNo;
	int telInterfaceActive;
	String dCDPrintOffsetX;
	String webAppCurrVersionNo;
	String deviceName;
	String billPrintType;
	String printerPort;
	int action;
	String deviceGroupName;
	String dCDPrinterName;
	String runtimeEnvPCName;
	int pCDevice;
	String takeawayPrinterkey;
	String spotPrinterName;
	int deviceType;
	String spotPrinterPort;
	int groupID;
	String platformLockedRemark;
	String deviceKey;
	String dCDPrinterPort;
	int dCBDevice;
	String spotPrinterkey;
	int platformShieldStatus;
	String runtimeEnvIP;
	String printOffsetX;
	int dAPINGDevice;
	String orderPrinterType;
	String printerPortType;
	String takeawayPrintOffsetX;
	String dCDPrinterPaperSize;
	String runtimeEnvScreenSize;
	int shopID;
	String takeawayPrinterPortType;
	String spotPrintOffsetX;
	int actionTime;
	int deviceBizModel;
	String localServerIP;
	String takeawayPrinterPaperSize;
	int deviceStatus;
	int itemID;
	String deviceRemark;
	String runtimeEnvScreenshotImageUrl;
	int pADDevice;
	String printerPaperSize;
	String takeawayPrinterName;
	String printerName;
	String siteFoodCategoryKeyLst;
	String deviceCode;
	int lastRequestTime;
	String spotPrinterPortType;
	String takeawayPrinterPort;
	String runtimeEnvCPUFre;
	String deviceGroupID;
	String runtimeEnvOS;
	String runtimeEnvMemorySize;
	String printerKey;
	String spotPrinterPaperSize;

	DeviceParamsDataRecord({this.orderType, this.firstRunTime, this.dCDPrinterPortType, this.shellCurrVersionNo, this.telInterfaceActive, this.dCDPrintOffsetX, this.webAppCurrVersionNo, this.deviceName, this.billPrintType, this.printerPort, this.action, this.deviceGroupName, this.dCDPrinterName, this.runtimeEnvPCName, this.pCDevice, this.takeawayPrinterkey, this.spotPrinterName, this.deviceType, this.spotPrinterPort, this.groupID, this.platformLockedRemark, this.deviceKey, this.dCDPrinterPort, this.dCBDevice, this.spotPrinterkey, this.platformShieldStatus, this.runtimeEnvIP, this.printOffsetX, this.dAPINGDevice, this.orderPrinterType, this.printerPortType, this.takeawayPrintOffsetX, this.dCDPrinterPaperSize, this.runtimeEnvScreenSize, this.shopID, this.takeawayPrinterPortType, this.spotPrintOffsetX, this.actionTime, this.deviceBizModel, this.localServerIP, this.takeawayPrinterPaperSize, this.deviceStatus, this.itemID, this.deviceRemark, this.runtimeEnvScreenshotImageUrl, this.pADDevice, this.printerPaperSize, this.takeawayPrinterName, this.printerName, this.siteFoodCategoryKeyLst, this.deviceCode, this.lastRequestTime, this.spotPrinterPortType, this.takeawayPrinterPort, this.runtimeEnvCPUFre, this.deviceGroupID, this.runtimeEnvOS, this.runtimeEnvMemorySize, this.printerKey, this.spotPrinterPaperSize});

	DeviceParamsDataRecord.fromJson(Map<String, dynamic> json) {
		orderType = json['orderType'];
		firstRunTime = json['firstRunTime'];
		dCDPrinterPortType = json['DCDPrinterPortType'];
		shellCurrVersionNo = json['shellCurrVersionNo'];
		telInterfaceActive = json['telInterfaceActive'];
		dCDPrintOffsetX = json['DCDPrintOffsetX'];
		webAppCurrVersionNo = json['webAppCurrVersionNo'];
		deviceName = json['deviceName'];
		billPrintType = json['billPrintType'];
		printerPort = json['printerPort'];
		action = json['action'];
		deviceGroupName = json['deviceGroupName'];
		dCDPrinterName = json['DCDPrinterName'];
		runtimeEnvPCName = json['runtimeEnvPCName'];
		pCDevice = json['pCDevice'];
		takeawayPrinterkey = json['takeawayPrinterkey'];
		spotPrinterName = json['spotPrinterName'];
		deviceType = json['deviceType'];
		spotPrinterPort = json['spotPrinterPort'];
		groupID = json['groupID'];
		platformLockedRemark = json['platformLockedRemark'];
		deviceKey = json['deviceKey'];
		dCDPrinterPort = json['DCDPrinterPort'];
		dCBDevice = json['dCBDevice'];
		spotPrinterkey = json['spotPrinterkey'];
		platformShieldStatus = json['platformShieldStatus'];
		runtimeEnvIP = json['runtimeEnvIP'];
		printOffsetX = json['printOffsetX'];
		dAPINGDevice = json['dAPINGDevice'];
		orderPrinterType = json['orderPrinterType'];
		printerPortType = json['printerPortType'];
		takeawayPrintOffsetX = json['takeawayPrintOffsetX'];
		dCDPrinterPaperSize = json['DCDPrinterPaperSize'];
		runtimeEnvScreenSize = json['runtimeEnvScreenSize'];
		shopID = json['shopID'];
		takeawayPrinterPortType = json['takeawayPrinterPortType'];
		spotPrintOffsetX = json['spotPrintOffsetX'];
		actionTime = json['actionTime'];
		deviceBizModel = json['deviceBizModel'];
		localServerIP = json['localServerIP'];
		takeawayPrinterPaperSize = json['takeawayPrinterPaperSize'];
		deviceStatus = json['deviceStatus'];
		itemID = json['itemID'];
		deviceRemark = json['deviceRemark'];
		runtimeEnvScreenshotImageUrl = json['runtimeEnvScreenshotImageUrl'];
		pADDevice = json['pADDevice'];
		printerPaperSize = json['printerPaperSize'];
		takeawayPrinterName = json['takeawayPrinterName'];
		printerName = json['printerName'];
		siteFoodCategoryKeyLst = json['siteFoodCategoryKeyLst'];
		deviceCode = json['deviceCode'];
		lastRequestTime = json['lastRequestTime'];
		spotPrinterPortType = json['spotPrinterPortType'];
		takeawayPrinterPort = json['takeawayPrinterPort'];
		runtimeEnvCPUFre = json['runtimeEnvCPUFre'];
		deviceGroupID = json['deviceGroupID'];
		runtimeEnvOS = json['runtimeEnvOS'];
		runtimeEnvMemorySize = json['runtimeEnvMemorySize'];
		printerKey = json['printerKey'];
		spotPrinterPaperSize = json['spotPrinterPaperSize'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['orderType'] = this.orderType;
		data['firstRunTime'] = this.firstRunTime;
		data['DCDPrinterPortType'] = this.dCDPrinterPortType;
		data['shellCurrVersionNo'] = this.shellCurrVersionNo;
		data['telInterfaceActive'] = this.telInterfaceActive;
		data['DCDPrintOffsetX'] = this.dCDPrintOffsetX;
		data['webAppCurrVersionNo'] = this.webAppCurrVersionNo;
		data['deviceName'] = this.deviceName;
		data['billPrintType'] = this.billPrintType;
		data['printerPort'] = this.printerPort;
		data['action'] = this.action;
		data['deviceGroupName'] = this.deviceGroupName;
		data['DCDPrinterName'] = this.dCDPrinterName;
		data['runtimeEnvPCName'] = this.runtimeEnvPCName;
		data['pCDevice'] = this.pCDevice;
		data['takeawayPrinterkey'] = this.takeawayPrinterkey;
		data['spotPrinterName'] = this.spotPrinterName;
		data['deviceType'] = this.deviceType;
		data['spotPrinterPort'] = this.spotPrinterPort;
		data['groupID'] = this.groupID;
		data['platformLockedRemark'] = this.platformLockedRemark;
		data['deviceKey'] = this.deviceKey;
		data['DCDPrinterPort'] = this.dCDPrinterPort;
		data['dCBDevice'] = this.dCBDevice;
		data['spotPrinterkey'] = this.spotPrinterkey;
		data['platformShieldStatus'] = this.platformShieldStatus;
		data['runtimeEnvIP'] = this.runtimeEnvIP;
		data['printOffsetX'] = this.printOffsetX;
		data['dAPINGDevice'] = this.dAPINGDevice;
		data['orderPrinterType'] = this.orderPrinterType;
		data['printerPortType'] = this.printerPortType;
		data['takeawayPrintOffsetX'] = this.takeawayPrintOffsetX;
		data['DCDPrinterPaperSize'] = this.dCDPrinterPaperSize;
		data['runtimeEnvScreenSize'] = this.runtimeEnvScreenSize;
		data['shopID'] = this.shopID;
		data['takeawayPrinterPortType'] = this.takeawayPrinterPortType;
		data['spotPrintOffsetX'] = this.spotPrintOffsetX;
		data['actionTime'] = this.actionTime;
		data['deviceBizModel'] = this.deviceBizModel;
		data['localServerIP'] = this.localServerIP;
		data['takeawayPrinterPaperSize'] = this.takeawayPrinterPaperSize;
		data['deviceStatus'] = this.deviceStatus;
		data['itemID'] = this.itemID;
		data['deviceRemark'] = this.deviceRemark;
		data['runtimeEnvScreenshotImageUrl'] = this.runtimeEnvScreenshotImageUrl;
		data['pADDevice'] = this.pADDevice;
		data['printerPaperSize'] = this.printerPaperSize;
		data['takeawayPrinterName'] = this.takeawayPrinterName;
		data['printerName'] = this.printerName;
		data['siteFoodCategoryKeyLst'] = this.siteFoodCategoryKeyLst;
		data['deviceCode'] = this.deviceCode;
		data['lastRequestTime'] = this.lastRequestTime;
		data['spotPrinterPortType'] = this.spotPrinterPortType;
		data['takeawayPrinterPort'] = this.takeawayPrinterPort;
		data['runtimeEnvCPUFre'] = this.runtimeEnvCPUFre;
		data['deviceGroupID'] = this.deviceGroupID;
		data['runtimeEnvOS'] = this.runtimeEnvOS;
		data['runtimeEnvMemorySize'] = this.runtimeEnvMemorySize;
		data['printerKey'] = this.printerKey;
		data['spotPrinterPaperSize'] = this.spotPrinterPaperSize;
		return data;
	}
}
