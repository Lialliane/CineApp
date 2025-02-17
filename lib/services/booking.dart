class BookingDetails{
  int selectedStandard;
  int selectedPrime;
  List<String>?  selectedFood=[];
  List<String>? selectedFoodSize=[];
  List<List>? selectedFoodFlavor=[];
  List<List>? selectedFoodFlavorNo;
  List<int>? selectedFoodNo=[];
  List<double>? selectedFoodPrice=[];

  BookingDetails(this.selectedStandard, this.selectedPrime, this.selectedFood, this.selectedFoodNo, this.selectedFoodPrice, this.selectedFoodSize, this.selectedFoodFlavor, this.selectedFoodFlavorNo);


  calculateFoodPrice(List<int>? selectedFoodNo, List<double>? selectedFoodPrice){
    double price=0;
    for(int i=0;i<selectedFoodPrice!.length;i++){
      price+=selectedFoodNo![i]*selectedFoodPrice[i];
    }
    return price;
  }

  getTotal(){
    return (selectedStandard*8)+(selectedPrime*16)+calculateFoodPrice(selectedFoodNo,selectedFoodPrice);
  }

  getPrice(int items,double price){
    return items*price;
  }
  Map<String, dynamic> toMap() {
    List tempo= getFlavors(selectedFoodFlavor!);
    List tempo1= getFlavors(selectedFoodFlavorNo!);

    return{
    "selectedStandard": selectedStandard == null ? null : selectedStandard,
    "selectedPrime": selectedPrime == null ? null : selectedPrime,
    "selectedFood": selectedFood == null ? null : this.selectedFood?.map((selectedFood) => selectedFood).toList(),
    "selectedFoodSize": selectedFoodSize == null ? null : selectedFoodSize?.map((selectedFoodSize) => selectedFoodSize).toList(),
    "selectedFoodFlavor": selectedFoodFlavor == null ? null : tempo.map((tempo) => tempo).toList(),
    "selectedFoodFlavorNo": selectedFoodFlavorNo == null ? null : tempo1.map((tempo1) => tempo1).toList(),
    "selectedFoodNo": selectedFoodNo == null ? null : this.selectedFoodNo?.map((selectedFoodNo) => selectedFoodNo).toList(),
    "selectedFoodPrice": selectedFoodPrice == null ? null : this.selectedFoodPrice?.map((selectedFoodPrice) => selectedFoodPrice).toList(),
  };
  }
  factory BookingDetails.fromMap(Map<String, dynamic> json){
    List temp=[];
    List<List> newFlavors=[];
    List what=List.from(json["selectedFoodFlavor"]);
    for(int i=0; i<what.length; i++){
      temp=what[i].split(',');
      newFlavors.add(temp);
    }
    List temp1=[];
    List<List> newFlavors1=[];
    List what1=List.from(json["selectedFoodFlavor"]);
    for(int i=0; i<what1.length; i++){
      temp1=what1[i].split(',');
      newFlavors1.add(temp);
    }


    return BookingDetails(
      json["selectedStandard"] == null ? null : json["selectedStandard"],
      json["selectedPrime"] == null ? null : json["selectedPrime"],
      json["selectedFood"]== null? null : List.from(json["selectedFood"]),
      json["selectedFoodNo"]== null? null : List.from(json["selectedFoodNo"]),
      json["selectedFoodPrice"]== null? null : List.from(json["selectedFoodPrice"]),
      json["selectedFoodSize"]== null? null : List.from(json["selectedFoodSize"]),
      json["selectedFoodFlavor"]== null? null :newFlavors,
      json["selectedFoodSize"]== null? null : newFlavors1,
  );}

  getFlavors(List<List> flavors){
    String temp='';
    List<String> newFlavors=[];
    for(int i=0; i<flavors.length; i++){
      for(int x=0; x<flavors[i].length; x++){
        temp+='${flavors[i][x]}${x==flavors[i].length-1?'':','}';
      }
      newFlavors.add(temp);
    }
    return newFlavors;

  }

  toFlavors(List<String> flavors){
    List temp=[];
    List<List> newFlavors=[];
    for(int i=0; i<flavors.length; i++){
      temp=flavors[i].split(',');
      newFlavors.add(temp);
    }
    return newFlavors;
  }
}

