import 'package:url_launcher/url_launcher.dart';

//int spotindex=0;

Future<void> launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url*";
    }
  }


class Info {
  final String? name;
  final String? assetimage;
  final String? discription;

   const Info({this.assetimage,this.name,this.discription});
}

List<String> options = ['Uber', 'OLA', 'Rapido'];

  List<String> pmt = ["Moovit"];

  List<String> metro = ["Pune Metro"];

  String selectedOption = 'Select an option';
  String selectedpmt = 'Select an option';
  String selectedmetro = 'Select an option';

  List<String> spots = [
    "Agha Khan Palace",
    "Appu Ghar",
    "Balaji Mandir",
    "Bund Garden",
    "Chaturshringi Temple",
    "Dagdusheth Halwai Ganpati Temple ",
    "David Synagogue",
    "Empress Garden",
    "Joshi's Museum of Miniature Railway",
    "Katraj Snake Park",
    "Lal Mahal",
    "Mahadji Shinde Chhatri",
    "National War Museum",
    "Pashan Lake",
    "Parvati Hill",
    "Pune Okayama Friendship Garden",
    "Pataleshwar Cave Temple",
    "Raja Dinkar Kelkar Museum",
    "Rajiv Gandhi Zoological Park",
    "Saras Baug",
    "Shaniwar Wada",
    "Sinhagad Fort",
    "Tribal Cultural Museum",
    "Vishrambaug Wada",
    "Vetal Hill",
    "ISKCON NVCC Temple"
  ];

  
List spotsdata=[
    
    const Info(
      name: "Shaniwar Wada",
      discription: " A historic fortification built in the 18th century, known for its architectural grandeur and historical significance.",
      assetimage: "assets/spots/spotslist/p1.png"
    ),
    const Info(
      name: " Aga Khan Palace",
      discription: " Built in 1892, this palace is a memorial to Mahatma Gandhi and his wife Kasturba Gandhi. It houses various artifacts and photographs related to the Indian independence movement.",
      assetimage: "assets/spots/spotslist/p2.png"
    ),
    const Info(
      name: "Sinhagad Fort",
      discription: "  Perched atop a hill, this fort offers panoramic views of the surrounding landscape and is a popular trekking destination.",
      assetimage: "assets/spots/spotslist/p3.jpeg"
    ),
    const Info(
      name: "Dagdusheth Halwai Ganpati Temple",
      discription: " Dedicated to Lord Ganesha, this temple is renowned for its elaborate decorations and festive celebrations, especially during Ganesh Chaturthi.",
      assetimage: "assets/spots/spotslist/p4.jpeg"
    ),
    const Info(
      name: "Raja Dinkar Kelkar Museum",
      discription: "Home to a diverse collection of artifacts, including traditional Indian art, crafts, and everyday items, showcasing the rich cultural heritage of India.",
      assetimage: "assets/spots/spotslist/p5.jpeg"
    ),
    const Info(
      name: "Saras Baug",
      discription: "A picturesque garden featuring lush greenery, a temple dedicated to Lord Ganesh, and a serene lake, perfect for a leisurely stroll or family picnic. ",
      assetimage: "assets/spots/spotslist/p6.jpeg"
    ),
    const Info(
      name: "Pataleshwar Cave Temple",
      discription: " Carved out of a single rock, this ancient temple is dedicated to Lord Shiva and is known for its unique architecture and intricate carvings",
      assetimage: "assets/spots/spotslist/p7.jpeg"
    ),
    const Info(
      name: "Vishrambaug Wada",
      discription: "A historical mansion with a rich heritage, offering insights into Pune's cultural and architectural history through its impressive structure and exhibitions. ",
      assetimage: "assets/spots/spotslist/p8.jpeg"
    ),
    const Info(
      name: "Parvati Hill",
      discription: "Home to several temples, including the Parvati Temple dedicated to the Hindu goddess Parvati, this hill offers panoramic views of Pune city. ",
      assetimage: "assets/spots/spotslist/p9.jpeg"
    ),
    const Info(
      name: "Osho International Meditation Resort",
      discription: "  A tranquil oasis amidst the hustle and bustle of the city, offering meditation sessions, wellness programs, and a serene environment for relaxation.",
      assetimage: "assets/spots/spotslist/p10.jpeg"
    ),
    const Info(
      name: " Rajiv Gandhi Zoological Park",
      discription: " Spread over a vast area, this zoo is home to a diverse range of flora and fauna, including endangered species",
      assetimage: "assets/spots/spotslist/p11.jpeg"
    ),
    const Info(
      name: "Pune Okayama Friendship Garden",
      discription: "A symbol of the strong bond between India and Japan, this garden features traditional Japanese architecture, serene landscapes, and tranquil water bodies",
      assetimage: "assets/spots/spotslist/p12.jpeg"
    ),
    const Info(
      name: "Vetal Tekdi",
      discription: "A popular spot for hiking and outdoor activities, offering breathtaking views of the city skyline and surrounding hills.",
      assetimage: "assets/spots/spotslist/p13.jpeg"
    ),
    const Info(
      name: " Lohagad Fort",
      discription: "Situated near Pune, this ancient fort offers a glimpse into Maharashtra's rich history and is a popular trekking destination, especially during the monsoon season",
      assetimage: "assets/spots/spotslist/p14.jpeg"
    ),
    const Info(
      name: " Khadakwasla Dam",
      discription: " A scenic reservoir surrounded by lush greenery, offering opportunities for boating, picnicking, and enjoying the natural beauty of the countryside",
      assetimage: "assets/spots/spotslist/p15.jpeg"
    ),
   ];


// food list

List fooddata = [
  const Info(
    name:"Vaishali ",
    discription: "Known for its South Indian delicacies and filter coffee.",
    assetimage: "assets/food/p1.avif",
  ),
    const Info(
    name:"Goodluck Café",
    discription: "Famous for its Bun Maska and Irani Chai.",
    assetimage: "assets/food/p2.jpeg",
  ),
    const Info(
    name:"German Bakery",
    discription: "Renowned for its European pastries and snacks.",
    assetimage: "assets/food/p3.jpg",
  ),
    const Info(
    name:"Kayani Bakery",
    discription: "Famous for its Shrewsbury biscuits and Mawa cake.",
    assetimage: "assets/food/p4.jpeg",
  ),
    const Info(
    name:"Bedekar Misal",
    discription: "Famous for its spicy Misal Pav.",
    assetimage: "assets/food/p5.webp"
  ),
    const Info(
    name:"Vohuman Café",
    discription: "Known for its Parsi breakfast dishes like Bun Maska and Akuri.",
    assetimage: "assets/food/p6.jpeg",
  ),
    const Info(
    name:"Chitale Bandhu Mithaiwale",
    discription: "Famous for its sweets, especially Bakarwadi and Pedha.",
    assetimage: "assets/food/p7.jpg",
  ),
    const Info(
    name:"Sujata Mastani",
    discription: "Renowned for its Mastani, a thick milkshake topped with dry fruits.",
    assetimage: "assets/food/p8.jpg",
  ),
    const Info(
    name:"Joshi Wadewale",
    discription: "Famous for its crispy Batata Vada and Sabudana Vada.",
    assetimage: "assets/food/p9.jpeg",
  ),
    const Info(
    name:"Cafe Goodtimes",
    discription: "Known for its continental cuisine and desserts.",
    assetimage: "assets/food/p10.avif",
  ),
    const Info(
    name:"Marz-o-Rin",
    discription: "Renowned for its sandwiches and milkshakes.",
    assetimage: "assets/food/p11.jpg",
  ),
    const Info(
    name:"Cafe Peterdonuts",
    discription: "Famous for its variety of donuts and pastries.",
    assetimage: "assets/food/p12.jpg",
  ),
    const Info(
    name:"Pune FC Road's Street Food",
    discription: "Famous for its variety of street snacks like Pav Bhaji, Bhel Puri, and Dabeli.",
    assetimage: "assets/food/p13.jpeg",
  ),
    const Info(
    name:"Shabree Restaurant",
    discription: "Known for its authentic Maharashtrian thali.",
    assetimage: "assets/food/p14.avif",
  ),
   const Info(
    name:"Wadeshwar",
    discription: "Famous for its South Indian breakfast and snacks.",
    assetimage: "assets/food/p15.jpg",
  ),
    const Info(
    name:"FC Road's Ice Cream Parlors",
    discription: "Renowned for their variety of ice creams and sundaes.",
    assetimage: "assets/food/p16.jpg",
  ),
    const Info(
    name:"Tiranga Non-Veg",
    discription: "Known for its delicious non-vegetarian dishes.",
    assetimage: "assets/food/p17.jpg",
  ),
    const Info(
    name:"Malaka Spice",
    discription: "Famous for its Pan-Asian cuisine.",
    assetimage: "assets/food/p18.avif",
  ),
    const Info(
    name:"Barbeque Nation",
    discription: "Known for its buffet and grills.",
    assetimage: "assets/food/p19.webp",
  ),
    const Info(
    name:"Little Italy",
    discription: "Renowned for its vegetarian Italian cuisine.",
    assetimage: "assets/food/p20.avif",
  ),
    const Info(
    name:"Cafe Mosaic",
    discription: "Famous for its continental and Mediterranean dishes.",
    assetimage: "assets/food/p21.avif",
  ),
    const Info(
    name:"The Urban Foundry",
    discription: "Renowned for its fusion dishes and cocktails. ",
    assetimage: "assets/food/p22.jpeg",
  ),
];
