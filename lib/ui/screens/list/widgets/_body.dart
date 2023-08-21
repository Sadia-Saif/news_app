part of '../list.dart';

class _Body extends StatefulWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  List<Article> articles = [];
  bool _isLoading = false;

  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    setState(() {
      _isLoading = true;
    });
    articles = await ApiServices().getBussinessArticles();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SafeArea(
              child: RefreshIndicator(
                onRefresh: () async {
                  setState(() {
                    ApiServices().getArticles();
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: articles.length,
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
              ),
            ),
      //     }
      //   },
      // ),
    );
  }
}
