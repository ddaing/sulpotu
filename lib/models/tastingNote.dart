class TastingNote {
  final int age;
  final double alc;
  final String name, region, type, cask, nose, taste, note, image;

  TastingNote(
      {this.age,
      this.alc,
      this.name,
      this.region,
      this.type,
      this.cask,
      this.nose,
      this.taste,
      this.note,
      this.image});
//todo date

}

List<TastingNote> notes = [
  TastingNote(
    age: 12,
    alc: 43.5,
    name: "Talisker",
    region: "Ske Island",
    type: "Single molt",
    cask: "somecask",
    nose: "Peat",
    taste: "sweet",
    note: "blahblah",
    image: "", //todo add image
  ),
];
