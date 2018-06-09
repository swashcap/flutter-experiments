import 'dart:math';

const _images = [
  'https://ll-us-i5.wal.co/asr/07bfd7d2-c97c-4176-bbf1-a70f0cf86fc2_1.75a0bcf84f702505bd1e49502ccb89c8.jpeg?odnWidth=200&odnHeight=200&odnBg=ffffff',
  'https://ll-us-i5.wal.co/asr/9f14890f-abe2-4a2d-a358-53bce77e3f37_1.5980d57fda35157b59eaffa71d175679.jpeg?odnWidth=200&odnHeight=200&odnBg=ffffff',
  'https://ll-us-i5.wal.co/asr/4a078e8a-e842-46b6-9f95-e0630e5669f6_1.11d2f27888cb33e7789210fbe0dd56f7.jpeg?odnWidth=200&odnHeight=200&odnBg=ffffff',
  'https://ll-us-i5.wal.co/asr/d3d6c478-60a4-43e7-a954-03453cfb46a0_1.caf0cc00f7203ab69dd9ad024be43a81.jpeg?odnWidth=200&odnHeight=200&odnBg=ffffff',
  'https://ll-us-i5.wal.co/asr/137d92bb-08d6-46bb-9f6c-7bc2658dfc39_1.8fd2036405bf404bcf8acb5882428457.jpeg?odnWidth=200&odnHeight=200&odnBg=ffffff',
  'https://ll-us-i5.wal.co/asr/54ddff4e-36e0-4ef2-bb57-7585e6474dd5_1.3eb67d41247fe088565abdf37518cb72.jpeg?odnWidth=200&odnHeight=200&odnBg=ffffff',
];

class Putter {
  String name;
  double price;
  String thumbnailUrl;

  Putter({ this.name, this.price = 0.0, this.thumbnailUrl });

  static generate(int count) {
    var rng = Random();

    return List<Putter>.generate(count, (index) {
      return Putter(
        name: 'Putter $index',
        price: (rng.nextDouble() * 1000).ceil() / 100,
        thumbnailUrl: _images[index % _images.length],
      );
    });
  }
}
