import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Article({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imageUrl,
    required this.views,
    required this.createdAt,
  });

  static List<Article> articles = [
    Article(
      id: '2',
      title:
          'Perusahaan Teknologi Terkemuka Rilis Smartphone Baru dengan Fitur Keamanan Mutakhir',
      subtitle:
          'Pengembangan sistem enkripsi kuantum yang aman telah mengubah cara data dikirim dan disimpan. Teknologi ini menggunakan sifat kuantum untuk mengamankan komunikasi dan melindungi data dari serangan kriptografi yang kuat. Hal ini sangat penting dalam era di mana serangan siber semakin canggih.',
      body:
          ' Perusahaan teknologi terkemuka meluncurkan smartphone terbarunya yang dilengkapi dengan fitur keamanan mutakhir. Smartphone ini menggunakan teknologi pengenalan wajah terbaru dan sensor sidik jari ultrasonik untuk memastikan keamanan data pengguna. Selain itu, ponsel ini juga memiliki enkripsi end-to-end untuk melindungi privasi pengguna.',
      author: 'Anna G. Wright',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Politics',
      views: 980,
      imageUrl:
          'https://images.unsplash.com/photo-1574280363402-2f672940b871?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    Article(
      id: '5',
      title:
      'Peneliti Temukan Bukti Baru Tentang Adanya Air di Planet Mars',
      subtitle:
      'Aliquam laoreet ante non diam suscipit accumsan. Sed vel consequat leo, non suscipit odio. Aliquam turpis',
      body:
      'Peneliti astronomi mengumumkan bahwa mereka telah menemukan bukti baru tentang adanya air di planet Mars. Melalui analisis data dari wahana antariksa terbaru, ditemukan jejak-jejak air yang membeku di daerah kutub Mars. Temuan ini memberikan harapan baru bagi penelitian kehidupan di planet merah.',
      author: 'Anna G. Wright',
      authorImageUrl:
      'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Politics',
      views: 600,
      imageUrl:
      'https://images.unsplash.com/photo-1658330056737-0fd4bda0e4c1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1351&q=80',
      createdAt: DateTime.now().subtract(const Duration(hours: 20)),
    ),
    Article(
      id: '3',
      title:
          'Aliquam ullamcorper ipsum, vel consequat sem finibus a. Donec lobortis',
      subtitle:
          'Aliquam laoreet ante non diam suscipit accumsan. Sed vel consequat leo, non suscipit odio. Aliquam turpis',
      body:
          'Nullam sed augue a turpis bibendum cursus. Suspendisse potenti. Praesent mi ligula, mollis quis elit ac, eleifend vestibulum ex. Nullam quis sodales tellus. Integer feugiat dolor et nisi semper luctus. Nulla egestas nec augue facilisis pharetra. Sed ultricies nibh a odio aliquam, eu imperdiet purus aliquam. Donec id ante nec',
      author: 'Anna G. Wright',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Politics',
      views: 800,
      imageUrl:
          'https://images.unsplash.com/photo-1616832880334-b1004d9808da?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1336&q=80',
      createdAt: DateTime.now().subtract(const Duration(hours: 8)),
    ),
    Article(
      id: '4',
      title: 'Proin mattis nec lorem at rutrum. Curabitur sit augue vel',
      subtitle:
          'Aliquam laoreet ante non diam suscipit accumsan. Sed vel consequat leo, non suscipit odio. Aliquam turpis',
      body:
          'Nullam sed augue a turpis bibendum cursus. Suspendisse potenti. Praesent mi ligula, mollis quis elit ac, eleifend vestibulum ex. Nullam quis sodales tellus. Integer feugiat dolor et nisi semper luctus. Nulla egestas nec augue facilisis pharetra. Sed ultricies nibh a odio aliquam, eu imperdiet purus aliquam. Donec id ante nec',
      author: 'Anna G. Wright',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Politics',
      views: 700,
      imageUrl:
          'https://images.unsplash.com/photo-1653587416464-8a99cc74d192?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=974&q=80',
      createdAt: DateTime.now().subtract(const Duration(hours: 19)),
    ),
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        createdAt,
      ];
}
