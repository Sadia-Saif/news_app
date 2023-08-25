part of '../list.dart';

class _Body extends StatefulWidget {
  const _Body({Key? key}) : super(key: key);
  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ArticlesProvider>(context, listen: false)
          .getArticles(topNewsUrl);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: RefreshIndicator(
        onRefresh: () async {},
        child: Consumer<ArticlesProvider>(
            builder: (BuildContext context, data, child) {
          final articles = data.articles;
          return articles.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primary,
                  ),
                )
              : SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: data.articles.length,
                      itemBuilder: (context, index) {
                        return Card(
                          color: AppColors.background,
                          child: NewsTile(
                            title: articles[index].title,
                            desc: articles[index].description,
                            imgUrl: articles[index].urlToImage,
                            url: articles[index].url,
                          ),
                        );
                      },
                    ),
                  ),
                );
        }),
      ),
    );
  }
}
