const _butterImages = [
  'https://media.giphy.com/media/87Mfu4aI2s7zG/giphy.gif',
  'https://media.giphy.com/media/x84Vdy91Q4O88/giphy.gif',
  'https://media.giphy.com/media/mhneIrSJiojNm/giphy.gif',
  'https://media.giphy.com/media/L8DksKYrBwL1m/giphy.gif',
  'https://media.giphy.com/media/SNGBqe0HcKgs8/giphy.gif',
  'https://media.giphy.com/media/fiCysCCPmoPmw/giphy.gif',
  'https://media.giphy.com/media/2G12hIgTi3ISk/giphy.gif',
  'https://media.giphy.com/media/l2YOl9O11VJVZbHdm/giphy.gif',
];

Iterable<String> butterImagesGenerator() sync* {
  int k = 0;

  while (k >= 0) {
    yield _butterImages[k % _butterImages.length];
    k++;
  }
}
