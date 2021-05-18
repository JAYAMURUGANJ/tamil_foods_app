class Food {
  String category;
  String images;
  int cid;
  List<Dislist> dislist;

  Food({this.category, this.images, this.cid, this.dislist});

  Food.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    images = json['images'];
    cid = json['cid'];
    if (json['dislist'] != null) {
      dislist = <Dislist>[];
      json['dislist'].forEach((v) {
        dislist.add(new Dislist.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this.category;
    data['images'] = this.images;
    data['cid'] = this.cid;
    if (this.dislist != null) {
      data['dislist'] = this.dislist.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Dislist {
  String did;
  String dname;
  List<String> incrident;
  String workflow;

  Dislist({this.did, this.dname, this.incrident, this.workflow});

  Dislist.fromJson(Map<String, dynamic> json) {
    did = json['did'];
    dname = json['dname'];
    incrident = json['Incrident'].cast<String>();
    workflow = json['workflow'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['did'] = this.did;
    data['dname'] = this.dname;
    data['Incrident'] = this.incrident;
    data['workflow'] = this.workflow;
    return data;
  }
}
