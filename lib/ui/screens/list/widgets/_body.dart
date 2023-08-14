// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../list.dart';

class _Body extends StatefulWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final NewsApi newsApi = NewsApi();
  late Future<List<Article>> futureArticles;

  @override
  void initState() {
    super.initState();
    futureArticles = newsApi.getTopHeadlines();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: FutureBuilder<List<Article>>(
        future: futureArticles,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error loading data'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No articles available'));
          } else {
            return SafeArea(
              child: RefreshIndicator(
                onRefresh: () async {
                  setState(() {
                    futureArticles = newsApi.getTopHeadlines();
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      final article = snapshot.data![index];
                      return Card(
                        color: AppColors.background,
                        child: NewsTile(
                          title: article.title,
                          desc: article.description,
                          imgUrl: article.urlToImage,
                        ),
                      );
                    },
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
