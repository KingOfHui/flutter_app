class TableListEntity {
	String msg;
	String traceID;
	String code;
	TableListData data;
	String success;

	TableListEntity({this.msg, this.traceID, this.code, this.data, this.success});

	TableListEntity.fromJson(Map<String, dynamic> json) {
		msg = json['msg'];
		traceID = json['traceID'];
		code = json['code'];
		data = json['data'] != null ? new TableListData.fromJson(json['data']) : null;
		success = json['success'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['msg'] = this.msg;
		data['traceID'] = this.traceID;
		data['code'] = this.code;
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		data['success'] = this.success;
		return data;
	}
}

class TableListData {
	List<TableListDataRecord> records;
	List<String> areaList;

	TableListData({this.records, this.areaList});

	TableListData.fromJson(Map<String, dynamic> json) {
		if (json['records'] != null) {
			records = new List<TableListDataRecord>();(json['records'] as List).forEach((v) { records.add(new TableListDataRecord.fromJson(v)); });
		}
		areaList = json['areaList']?.cast<String>();
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.records != null) {
      data['records'] =  this.records.map((v) => v.toJson()).toList();
    }
		data['areaList'] = this.areaList;
		return data;
	}
}

class TableListDataRecord {
	String userInfo;
	int childTableIndex;
	String unionTableGroupName;
	int isTemporary;
	int isRoom;
	int tableStatus;
	String tableName;
	int itemID;
	int areaID;
	String areaKey;
	String lockedBy;
	String areaName;
	var orderTotalAmount;
	int sortIndexX;
	int isSelfOrder;
	String tableID;
	String clearFlag;
	int currRecordID;
	String saasOrderKey;
	int currPerson;
	String orderCreateTime;
	int groupID;
	String tableCode;
	int defaultPerson;
	String createBy;
	String bookOrderNo;
	int shopID;
	String printerKey;

	TableListDataRecord({this.userInfo, this.childTableIndex, this.unionTableGroupName, this.isTemporary, this.isRoom, this.tableStatus, this.tableName, this.itemID, this.areaID, this.areaKey, this.lockedBy, this.areaName, this.orderTotalAmount, this.sortIndexX, this.isSelfOrder, this.tableID, this.clearFlag, this.currRecordID, this.saasOrderKey, this.currPerson, this.orderCreateTime, this.groupID, this.tableCode, this.defaultPerson, this.createBy, this.bookOrderNo, this.shopID, this.printerKey});

	TableListDataRecord.fromJson(Map<String, dynamic> json) {
		userInfo = json['userInfo'];
		childTableIndex = json['childTableIndex'];
		unionTableGroupName = json['unionTableGroupName'];
		isTemporary = json['isTemporary'];
		isRoom = json['isRoom'];
		tableStatus = json['tableStatus'];
		tableName = json['tableName'];
		itemID = json['itemID'];
		areaID = json['areaID'];
		areaKey = json['areaKey'];
		lockedBy = json['lockedBy'];
		areaName = json['areaName'];
		orderTotalAmount = json['orderTotalAmount'];
		sortIndexX = json['sortIndexX'];
		isSelfOrder = json['isSelfOrder'];
		tableID = json['tableID'];
		clearFlag = json['clearFlag'];
		currRecordID = json['currRecordID'];
		saasOrderKey = json['saasOrderKey'];
		currPerson = json['currPerson'];
		orderCreateTime = json['orderCreateTime'];
		groupID = json['groupID'];
		tableCode = json['tableCode'];
		defaultPerson = json['defaultPerson'];
		createBy = json['createBy'];
		bookOrderNo = json['bookOrderNo'];
		shopID = json['shopID'];
		printerKey = json['printerKey'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['userInfo'] = this.userInfo;
		data['childTableIndex'] = this.childTableIndex;
		data['unionTableGroupName'] = this.unionTableGroupName;
		data['isTemporary'] = this.isTemporary;
		data['isRoom'] = this.isRoom;
		data['tableStatus'] = this.tableStatus;
		data['tableName'] = this.tableName;
		data['itemID'] = this.itemID;
		data['areaID'] = this.areaID;
		data['areaKey'] = this.areaKey;
		data['lockedBy'] = this.lockedBy;
		data['areaName'] = this.areaName;
		data['orderTotalAmount'] = this.orderTotalAmount;
		data['sortIndexX'] = this.sortIndexX;
		data['isSelfOrder'] = this.isSelfOrder;
		data['tableID'] = this.tableID;
		data['clearFlag'] = this.clearFlag;
		data['currRecordID'] = this.currRecordID;
		data['saasOrderKey'] = this.saasOrderKey;
		data['currPerson'] = this.currPerson;
		data['orderCreateTime'] = this.orderCreateTime;
		data['groupID'] = this.groupID;
		data['tableCode'] = this.tableCode;
		data['defaultPerson'] = this.defaultPerson;
		data['createBy'] = this.createBy;
		data['bookOrderNo'] = this.bookOrderNo;
		data['shopID'] = this.shopID;
		data['printerKey'] = this.printerKey;
		return data;
	}
}
