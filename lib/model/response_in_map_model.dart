class responseMap_in_dart {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<Data>? data;
  Support? support;
  Meta? mMeta;

  responseMap_in_dart(
      {this.page,
        this.perPage,
        this.total,
        this.totalPages,
        this.data,
        this.support,
        this.mMeta});

  responseMap_in_dart.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    perPage = json['per_page'];
    total = json['total'];
    totalPages = json['total_pages'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    support =
    json['support'] != null ? new Support.fromJson(json['support']) : null;
    mMeta = json['_meta'] != null ? new Meta.fromJson(json['_meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['per_page'] = this.perPage;
    data['total'] = this.total;
    data['total_pages'] = this.totalPages;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.support != null) {
      data['support'] = this.support!.toJson();
    }
    if (this.mMeta != null) {
      data['_meta'] = this.mMeta!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  Data({this.id, this.email, this.firstName, this.lastName, this.avatar});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['avatar'] = this.avatar;
    return data;
  }
}

class Support {
  String? url;
  String? text;

  Support({this.url, this.text});

  Support.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['text'] = this.text;
    return data;
  }
}

class Meta {
  String? poweredBy;
  String? docsUrl;
  String? upgradeUrl;
  String? exampleUrl;
  String? variant;
  String? message;
  Cta? cta;
  String? context;

  Meta(
      {this.poweredBy,
        this.docsUrl,
        this.upgradeUrl,
        this.exampleUrl,
        this.variant,
        this.message,
        this.cta,
        this.context});

  Meta.fromJson(Map<String, dynamic> json) {
    poweredBy = json['powered_by'];
    docsUrl = json['docs_url'];
    upgradeUrl = json['upgrade_url'];
    exampleUrl = json['example_url'];
    variant = json['variant'];
    message = json['message'];
    cta = json['cta'] != null ? new Cta.fromJson(json['cta']) : null;
    context = json['context'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['powered_by'] = this.poweredBy;
    data['docs_url'] = this.docsUrl;
    data['upgrade_url'] = this.upgradeUrl;
    data['example_url'] = this.exampleUrl;
    data['variant'] = this.variant;
    data['message'] = this.message;
    if (this.cta != null) {
      data['cta'] = this.cta!.toJson();
    }
    data['context'] = this.context;
    return data;
  }
}

class Cta {
  String? label;
  String? url;

  Cta({this.label, this.url});

  Cta.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['url'] = this.url;
    return data;
  }
}
