// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../home.dart';

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        AppSpaces.y1,
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Headline.",
                style: AppText.b1.copyWith(color: AppColors.primary),
                textAlign: TextAlign.start,
              ),
              AppSpaces.y,
              Text(
                "Today,August 11th",
                style: AppText.s1.copyWith(color: AppColors.secondary),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          const Icon(
            Icons.notifications_none_outlined,
            color: AppColors.white,
            size: 30,
          ),
        ]),
        AppSpaces.y2,
        const TrendingList(),
        AppSpaces.y2,
        Row(
          children: [
            Text(
              StaticAssets.tWorld,
              style: AppText.s2.copyWith(color: AppColors.secondary),
            ),
            const Spacer(),
            const Comments(),
          ],
        ),
        AppSpaces.y4,
        Row(
          children: [
            Text(
              StaticAssets.tFollowing,
              style: AppText.h3.copyWith(color: AppColors.white),
            ),
            const Spacer(),
            Text(
              StaticAssets.tViewMore,
              style: AppText.s1.copyWith(color: AppColors.primary),
            ),
          ],
        ),
        AppSpaces.y2,
        const CatagoriesList(),
        AppSpaces.y1,
        const NewsList(),
      ]),
    );
  }
}
