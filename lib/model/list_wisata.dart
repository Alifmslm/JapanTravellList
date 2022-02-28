class TempatWisata {
  late String name;
  late String location;
  late String description;
  late String opendays;
  late String opetimes;
  late String price;
  late String imageAsset;
  late List<String> imageurls;

  TempatWisata({
    required this.name,
    required this.location,
    required this.description,
    required this.opendays,
    required this.opetimes,
    required this.price,
    required this.imageAsset,
    required this.imageurls,
  });
}

var tempatWisataList = [
  TempatWisata(
    name: 'Mount Fuji',
    location: 'Japan',
    description:
        'Without a doubt Japans most recognizable landmark, majestic Mount Fuji (Fuji-san) is also the countrys highest mountain peak. Towering 3,776 meters over an otherwise largely flat landscape to the south and east, this majestic and fabled mountain is tall enough to be seen from Tokyo, more than 100 kilometers away.',
    opendays: 'Mond - Sun',
    opetimes: '4 am - 9 pm',
    price: 'JPY 60K',
    imageAsset: 'image/fuji.jpg',
    imageurls: [
      'https://cdn.britannica.com/47/80547-050-8B316D38/Field-green-tea-Mount-Fuji-Shizuoka-prefecture.jpg',
      'https://cdn.britannica.com/47/80547-050-8B316D38/Field-green-tea-Mount-Fuji-Shizuoka-prefecture.jpg',
      'https://img.jakpost.net/c/2021/07/25/2021_07_25_115778_1627216111._large.jpg',
      'https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/02/a0002587/img/basic/a0002587_main.jpg?20190603163916&q=80&rw=750&rh=536',
      'https://img.i-scmp.com/cdn-cgi/image/fit=contain,width=1098,format=auto/sites/default/files/styles/1200x800/public/images/methode/2018/06/22/d7202d44-746f-11e8-aa4d-d2a0e82fc143_1280x720_180911.JPG?itok=AfbliYRw',
    ],
  ),


  TempatWisata(
    name: 'Osaka Castle',
    location: 'Chūō-ku, Osaka, Japan.',
    description:
        'Built in 1586 by famous Japanese warrior and politician Toyotomi Hideyoshi, Osaka Castle (Ōsaka-jō) was at the time the largest and most important fortress in the country. Although destroyed and rebuilt a number of times since, the present structure, built in 1931, remains true to the original.',
    opendays: 'Weekend',
    opetimes: '8 am - 6 pm',
    imageAsset: 'image/osakacastle.jpg',
    price: 'JPY 60K',
    imageurls: [
      'https://aws-tiqets-cdn.imgix.net/images/content/0a0ba0616391406e9f40b8430da4b899.JPG?auto=format&fit=crop&h=800&ixlib=python-3.2.1&q=70&w=800&s=13a03aab7ebe9db2bb368e27ae0e2921',
      'https://rimage.gnst.jp/livejapan.com/public/article/detail/a/20/00/a2000008/img/en/a2000008_main.jpg?20200911191757&q=80&rw=750&rh=536',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Osaka_Castle_Nishinomaru_Garden_April_2005.JPG/1200px-Osaka_Castle_Nishinomaru_Garden_April_2005.JPG',
      'https://photos.smugmug.com/Osaka/Osaka-Castle-Area/i-CNFxkPB/0/bfc2f5a8/XL/OsakaCastleArea_TSD_OsakaCastle6-XL.jpg',
      'https://sworld.co.uk/img/img/571/photoAlbum/116298/originals/0.jpg',
    ],
  ),
  TempatWisata(
    name: 'Museum Ghibli',
    location: 'Chūō-ku, Osaka, Japan.',
    description:
        'Built in 1586 by famous Japanese warrior and politician Toyotomi Hideyoshi, Osaka Castle (Ōsaka-jō) was at the time the largest and most important fortress in the country. Although destroyed and rebuilt a number of times since, the present structure, built in 1931, remains true to the original.',
    opendays: 'Weekend',
    opetimes: '8 am - 6 pm',
    imageAsset: 'image/museumgihbli.jpg',
    price: 'JPY 60K',
    imageurls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/18/46/10/20160411-100959-largejpg.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/10/6f/8a/photo0jpg.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/07/ad/d3/ghibli-museum-mitaka.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/07/ad/bd/ghibli-museum-mitaka.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/07/ad/b7/ghibli-museum-mitaka.jpg?w=1200&h=-1&s=1',
    ],
  ),
  TempatWisata(
    name: 'Taman Bunga Ashikaga',
    location: 'Ashikaga,Prefektur Tochigi',
    description:
    'Built in 1586 by famous Japanese warrior and politician Toyotomi Hideyoshi, Osaka Castle (Ōsaka-jō) was at the time the largest and most important fortress in the country. Although destroyed and rebuilt a number of times since, the present structure, built in 1931, remains true to the original.',
    opendays: 'Weekend',
    opetimes: '8 am - 6 pm',
    imageAsset: 'image/tamanbunga.jpg',
    price: 'JPY 60K',
    imageurls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/5d/92/48/flowerphp-pale-red-wisteria.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/5d/91/bb/flowerphp-pale-red-wisteria.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/2b/a3/2c/flo-breaking-news-pale.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/24/69/27/this-is-the-scene-of.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/24/67/ab/this-is-the-scene-of.jpg?w=1200&h=-1&s=1',
    ],
  ),
  TempatWisata(
    name: 'Uzu no Michi',
    location: 'Naruto, Japan',
    description:
    'Built in 1586 by famous Japanese warrior and politician Toyotomi Hideyoshi, Osaka Castle (Ōsaka-jō) was at the time the largest and most important fortress in the country. Although destroyed and rebuilt a number of times since, the present structure, built in 1931, remains true to the original.',
    opendays: 'Weekend',
    opetimes: '8 am - 6 pm',
    imageAsset: 'image/uzu.jpg',
    price: 'JPY 60K',
    imageurls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/11/95/0a/the-naruto-wirlpools.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/11/95/08/the-naruto-wirlpools.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/ca/01/a9/caption.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/6a/9e/c5/caption.jpg?w=700&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/59/31/1a/tokushima-prefectural.jpg?w=1200&h=-1&s=1',
    ],
  ),
];
