class CompeEntity {
	String msg;
	int code;
	CompeData data;

	CompeEntity({this.msg, this.code, this.data});

	CompeEntity.fromJson(Map<String, dynamic> json) {
		msg = json['msg'];
		code = json['code'];
		data = json['data'] != null ? new CompeData.fromJson(json['data']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['msg'] = this.msg;
		data['code'] = this.code;
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		return data;
	}
}

class CompeData {
	int amount;
	String receivePhone;
	int consignorAreaId;
	String receiveAddress;
	int receiveAreaId;
	int midsizePrice;
	int largePrice;
	String receiveStoreName;
	String checkCode;
	String consignorName;
	String consignorPhone;
	String consignorStoreName;
	CompeDataGoodscount goodsCount;
	int orderTime;
	int payType;
	String receiveName;
	String consignorAddress;
	int smallPrice;

	CompeData({this.amount, this.receivePhone, this.consignorAreaId, this.receiveAddress, this.receiveAreaId, this.midsizePrice, this.largePrice, this.receiveStoreName, this.checkCode, this.consignorName, this.consignorPhone, this.consignorStoreName, this.goodsCount, this.orderTime, this.payType, this.receiveName, this.consignorAddress, this.smallPrice});

	CompeData.fromJson(Map<String, dynamic> json) {
		amount = json['amount'];
		receivePhone = json['receivePhone'];
		consignorAreaId = json['consignorAreaId'];
		receiveAddress = json['receiveAddress'];
		receiveAreaId = json['receiveAreaId'];
		midsizePrice = json['midsizePrice'];
		largePrice = json['largePrice'];
		receiveStoreName = json['receiveStoreName'];
		checkCode = json['checkCode'];
		consignorName = json['consignorName'];
		consignorPhone = json['consignorPhone'];
		consignorStoreName = json['consignorStoreName'];
		goodsCount = json['goodsCount'] != null ? new CompeDataGoodscount.fromJson(json['goodsCount']) : null;
		orderTime = json['orderTime'];
		payType = json['payType'];
		receiveName = json['receiveName'];
		consignorAddress = json['consignorAddress'];
		smallPrice = json['smallPrice'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['amount'] = this.amount;
		data['receivePhone'] = this.receivePhone;
		data['consignorAreaId'] = this.consignorAreaId;
		data['receiveAddress'] = this.receiveAddress;
		data['receiveAreaId'] = this.receiveAreaId;
		data['midsizePrice'] = this.midsizePrice;
		data['largePrice'] = this.largePrice;
		data['receiveStoreName'] = this.receiveStoreName;
		data['checkCode'] = this.checkCode;
		data['consignorName'] = this.consignorName;
		data['consignorPhone'] = this.consignorPhone;
		data['consignorStoreName'] = this.consignorStoreName;
		if (this.goodsCount != null) {
      data['goodsCount'] = this.goodsCount.toJson();
    }
		data['orderTime'] = this.orderTime;
		data['payType'] = this.payType;
		data['receiveName'] = this.receiveName;
		data['consignorAddress'] = this.consignorAddress;
		data['smallPrice'] = this.smallPrice;
		return data;
	}
}

class CompeDataGoodscount {
	int midCount;
	int midSmallCount;
	int largeCount;
	int smallCount;
	int totalCount;
	int largeMidCount;

	CompeDataGoodscount({this.midCount, this.midSmallCount, this.largeCount, this.smallCount, this.totalCount, this.largeMidCount});

	CompeDataGoodscount.fromJson(Map<String, dynamic> json) {
		midCount = json['midCount'];
		midSmallCount = json['midSmallCount'];
		largeCount = json['largeCount'];
		smallCount = json['smallCount'];
		totalCount = json['totalCount'];
		largeMidCount = json['largeMidCount'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['midCount'] = this.midCount;
		data['midSmallCount'] = this.midSmallCount;
		data['largeCount'] = this.largeCount;
		data['smallCount'] = this.smallCount;
		data['totalCount'] = this.totalCount;
		data['largeMidCount'] = this.largeMidCount;
		return data;
	}
}
