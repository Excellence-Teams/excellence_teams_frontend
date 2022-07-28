import 'package:excellence_teams_client/data/repository/repositories.dart';
import 'package:excellence_teams_client/services/services.dart';
import 'package:excellence_teams_client/ui/resources/text_styles.dart';
import 'package:excellence_teams_client/ui/screens/bookmarks/bookmarks.viewmodel.dart';
import 'package:excellence_teams_client/ui/screens/search/search.screen.dart';
import 'package:excellence_teams_client/ui/widgets/button.dart';
import 'package:excellence_teams_client/ui/widgets/text.dart';
import 'package:flutter/material.dart';

class BookmarksScreen extends StatelessWidget {
  const BookmarksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BookmarksViewModel(
        bookmarkRepository: context.read<BookmarkRepository>(),
        authenticationRepository: getIt<AuthenticationRepository>(),
        router: context.router,
      ),
      child: Builder(
        builder: (context) {
          final model = context.watch<BookmarksViewModel>();
          final width = MediaQuery.of(context).size.width / 2;

          return Center(
            child: Container(
              width: width,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      width: width,
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          ETText(
                            'Bookmarks',
                            style: ETTextStyles.montBold.copyWith(
                              fontSize: 24,
                            ),
                          ),
                          const SizedBox(height: 8),
                          ETText(
                            'Your bookmarked projects will appear here',
                            style:
                                ETTextStyles.montRegular.copyWith(fontSize: 16),
                          ),
                          if (!model.isSignedIn) ...[
                            const SizedBox(height: 16),
                            ETText(
                              'You need to sign in to use see your bookmarks',
                              style:
                                  ETTextStyles.montBold.copyWith(fontSize: 16),
                            ),
                            const SizedBox(height: 16),
                            ETButton(
                              label: "take me to sign in",
                              onClick: model.toSignIn,
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  if (model.isSignedIn) ...[
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: width,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(16),
                        child: ProfilesRow(
                          profiles: model.state.users,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        width: width,
                        padding: EdgeInsets.all(16),
                        child: ProjectsRow(projects: model.state.projects),
                      ),
                    ),
                  ]
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
