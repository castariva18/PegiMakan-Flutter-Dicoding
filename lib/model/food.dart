class FoodPlace {
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String imageAsset;
  List<String> imageUrls;

  FoodPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var foodPlaceList = [
  FoodPlace(
    name: 'KFC',
    location: '1.1km Delivery in 18 min',
    description:
        'KFC is an American fast food restaurant chain headquartered in Louisville, Kentucky that specializes in fried chicken.',
    openDays: 'Open Everyday',
    openTime: '08:00 - 22:00',
    ticketPrice: '10K - 150K',
    imageAsset: 'images/kfc.jpg',
    imageUrls: [
      'http://s2.cerpen.co.id/idimgs/201901/18/9/15478176207525.png',
      'https://prod-wolt-venue-images-cdn.wolt.com/s/1VCAF_DkAPpyrykP2WUtMhAzAHwECkZJcNQhkVD15Rw/5cebedf079bb8c4e499bd4de/b951af76-a7f3-11eb-8930-a24512bb49bb_kfc_wolt_cover_1200x800__1_.jpg',
      'https://ik.imagekit.io/tvlk/cul-asset/guys1L+Yyer9kzI3sp-pb0CG1j2bhflZGFUZOoIf1YOBAm37kEUOKR41ieUZm7ZJ/tvlk-prod-cul-assets/culinary/asset/REST_600-720x720-FIT_AND_TRIM-1888499b76dbc320bbd02f7587451fbd.jpeg?tr=q-40,c-at_max,w-1080,h-1920&_src=imagekit',
      'https://cdn-b.william-reed.com/var/wrbm_gb_hospitality/storage/images/publications/hospitality/bighospitality.co.uk/article/2020/04/15/kfc-reopens-11-restaurants-for-delivery-only/3331532-1-eng-GB/KFC-reopens-11-restaurants-for-delivery-only_wrbm_large.png'
    ],
  ),
  FoodPlace(
    name: 'Gokana',
    location: '1.0km Delivery in 15 min',
    description:
        'GOKANA menyediakan berbagai macam masakan Jepang yang HALAL dengan citarasa Indonesia. Dengan banyak variasi menu serta tingkat kepedasan yang cocok untuk siapapun, kamu bisa menikmati makanan yang lezat dengan harga bersahabat!.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 22:00',
    ticketPrice: '20K - 200K',
    imageAsset: 'images/gokana.jpg',
    imageUrls: [
      'http://gokanaresto.com/wp-content/uploads/2018/10/Chicken-Original-bento.jpg',
      'https://anakjajan.files.wordpress.com/2017/08/dscf1835.jpg?w=474&h=307',
      'https://images-loyalty.ovo.id/public/deal/03/36/l/17631.jpg?ver=1',
    ],
  ),
  FoodPlace(
    name: "Domino's Pizza",
    location: '1.0km Delivery in 15 min',
    description:
        "Domino's Pizza, Inc., branded as Domino's, is an American multinational pizza restaurant chain founded in 1960.",
    openDays: 'Open Everyday',
    openTime: '08:00 - 22:00',
    ticketPrice: '30K - 200K',
    imageAsset: 'images/dominos.jpg',
    imageUrls: [
      'https://cdn-2.tstatic.net/travel/foto/bank/images/domino-pizza.jpg',
      'https://pbs.twimg.com/media/EubZmt8XUAEfeSO.jpg',
      'https://harga.web.id/wp-content/uploads/Domino%E2%80%99s-Pizza.jpg',
      'https://www.eweek.com/wp-content/uploads/2020/10/Dominos.pizza_.jpg'
    ],
  ),
  FoodPlace(
    name: 'Burger King',
    location: '3.4km Delivery in 35 min',
    description:
        'Burger King is an American multinational chain of hamburger fast food restaurants. Headquartered in Miami-Dade County, Florida, the company was founded in 1953 as Insta-Burger King, a Jacksonville, Florida–based restaurant chain.',
    openDays: 'Open Everyday',
    openTime: '08:00 - 22:00',
    ticketPrice: '30K - 300K',
    imageAsset: 'images/bk.jpg',
    imageUrls: [
      'https://ik.imagekit.io/tvlk/cul-asset/guys1L+Yyer9kzI3sp-pb0CG1j2bhflZGFUZOoIf1YOBAm37kEUOKR41ieUZm7ZJ/tvlk-prod-cul-assets/culinary/asset/REST_moz-960x720-FIT_AND_TRIM-be21dcf834912af0646c0b259de5a5b8.jpeg?tr=q-40,c-at_max,w-1080,h-1920&_src=imagekit',
      'https://assets-pergikuliner.com/lVi_ibL8O6OO_P21ihwLngxsbis=/385x290/smart/https://assets-pergikuliner.com/uploads/image/picture/1469699/picture-1561978452.jpg',
      'https://cdn-2.tstatic.net/tribunnews/foto/bank/images/bk-king-savers-1.jpg',
    ],
  ),
  FoodPlace(
    name: 'Marugame Udon',
    location: '4.0km Delivery in 38 min',
    description:
        'Marugame Seimen, also known as Marugame Udon, is a Japanese fast-food chain specializing in udon. The chain is operated by Toridoll Holdings Corporation based in Kobe.',
    openDays: 'Open Everyday',
    openTime: '08:00 - 22:00',
    ticketPrice: '30K - 300K',
    imageAsset: 'images/marugame.jpg',
    imageUrls: [
      'https://hargamenu.com/wp-content/uploads/2017/11/marugame-udon-menu-1.png',
      'https://www.denpasarkota.go.id/uploads/datang/datang_201003040339_MarugameUdon.jpg',
      'https://matalelaki.com/media/94/65/94/946594ff21f67ebd96eee3f66717d7b0.jpg',
    ],
  ),
  FoodPlace(
    name: "McDonald's",
    location: '3.3km Delivery in 32 min',
    description:
        "McDonald's Corporation is an American fast food company, founded in 1940 as a restaurant operated by Richard and Maurice McDonald, in San Bernardino, California, United States.",
    openDays: 'Open Everyday',
    openTime: '08:00 - 22:00',
    ticketPrice: '15K - 250K',
    imageAsset: 'images/mcd.jpg',
    imageUrls: [
      'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2020/09/05/2316288780.jpeg',
      'https://i2.wp.com/tokogunungagung.co.id/wp-content/uploads/2020/03/menu-mcd.jpg',
      'https://i0.wp.com/pointsgeek.id/wp-content/uploads/2020/01/Voucher-McDonalds.jpg?fit=1200%2C601&ssl=1',
    ],
  ),
  FoodPlace(
    name: 'Pizza Hut',
    location: '2.3km Delivery in 30 min',
    description:
        'Pizza Hut is an American restaurant chain and international franchise founded in 1958 in Wichita, Kansas by Dan and Frank Carney. It provides pizza and other Italian-American dishes, including pasta, side dishes and desserts.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 22:00',
    ticketPrice: '50K - 300K',
    imageAsset: 'images/ph.jpg',
    imageUrls: [
      'https://lh3.googleusercontent.com/proxy/7TIHMcF_IRZ-3YO7FNgAm8GQ_DoKbsVufgrVdA_zfj6iFNHuJBPTQAp5LFowjplA5Wwe1SQciONyWvAkYfjEilo2Yea_0dj5',
      'https://ik.imagekit.io/tvlk/cul-asset/guys1L+Yyer9kzI3sp-pb0CG1j2bhflZGFUZOoIf1YOBAm37kEUOKR41ieUZm7ZJ/tvlk-prod-cul-assets/culinary/asset/REST_328-922x720-FIT_AND_TRIM-46138daa11fbcaf7d8d5a8a550993f9d.jpeg?tr=q-40,c-at_max,w-1080,h-1920&_src=imagekit',
      'https://images.phi.content-cdn.io/cdn-cgi/image/height=400,quality=50/yum-resources/e24b4731-a903-4b92-b9ab-b7bdeb0fee6d/Images/userimages/12-05-2021/eoO1ijg26/Tvsad4vcjkvQ==/26926-Super-Limo-Banners-480X400pix-Eng.jpg',
    ],
  ),
  FoodPlace(
    name: 'Starbucks',
    location: '5.3km Delivery in 45 min',
    description:
        "Starbucks Corporation is an American multinational chain of coffeehouses and roastery reserves headquartered in Seattle, Washington. As the world's largest coffeehouse chain, Starbucks is seen to be the main representation of the United States' second wave of coffee culture.",
    openDays: 'Open Everyday',
    openTime: '07:30 - 22:00',
    ticketPrice: '20K - 200K',
    imageAsset: 'images/sbucks.jpg',
    imageUrls: [
      'https://the-iconomics.storage.googleapis.com/wp-content/uploads/2020/04/16160910/Starbucks.jpg2_.jpg',
      'https://stories.starbucks.com/uploads/2021/02/SBX20200225-SpringBeverages-FeatureHorizontal.jpg',
      'http://asset-a.grid.id/crop/0x0:0x0/750x500/photo/intisarifoto/original/10298_terlalu-banyak-memberi-es-wanita-ini-menggugat-starbucks.jpg',
    ],
  ),
  FoodPlace(
    name: 'Solaria',
    location: '1.1km Delivery in 25 min',
    description:
        'Solaria adalah restoran keluarga yang menawarkan berbagai macam makanan dan minuman seperti chicken cordon bleu, nasi goreng teri medan, kwetiau siram ayam, nasi ayam goreng mentega dan masih banyak menu lainnya.',
    openDays: 'Open Everyday',
    openTime: '08:00 - 22:00',
    ticketPrice: '20K - 200K',
    imageAsset: 'images/solaria.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0f/79/54/87/solaria-surabaya-town.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjrLOLI51o_kRE8hoXDix6wo2-Zbr-4ld4Wg&usqp=CAU',
      'https://media.suara.com/pictures/653x366/2015/11/03/o_1a35rdt864k1urh1kl012147l5a.jpg',
    ],
  ),
  FoodPlace(
    name: "Wendy's",
    location: '1.1km Delivery in 20 min',
    description:
        "Wendy's is an American international fast food restaurant chain founded by Dave Thomas on November 15, 1969, in Columbus, Ohio. The company moved its headquarters to Dublin, Ohio, on January 29, 2006.",
    openDays: 'Open Everyday',
    openTime: '08:00 - 22:00',
    ticketPrice: '20K - 200K',
    imageAsset: 'images/wendys.jpg',
    imageUrls: [
      'https://fej-aws-media.s3-accelerate.amazonaws.com/2019/10/Wendys.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEkf3dVViFCBqWtBJeIHw60JAwbmYQJdXEFA&usqp=CAU',
      'https://ei.marketwatch.com/Multimedia/2020/05/05/Photos/ZQ/MW-IF868_wendys_20200505125742_ZQ.jpg?uuid=89314b38-8ef1-11ea-8148-9c8e992d421e',
    ],
  ),
];
