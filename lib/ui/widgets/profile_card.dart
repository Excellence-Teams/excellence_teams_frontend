import 'package:excellence_teams_client/data/models/user.model.dart';
import 'package:excellence_teams_client/data/repository/bookmark.repository.dart';
import 'package:excellence_teams_client/services/services.dart';
import 'package:excellence_teams_client/ui/resources/resources.dart';
import 'package:excellence_teams_client/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.user,
    required this.onTap,
  }) : super(key: key);

  final User user;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: EdgeInsets.all(16),
        width: 220,
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  child: Text(
                    user.name,
                    style: ETTextStyles.montHeavy.copyWith(fontSize: 22),
                  ),
                ),
                _BookmarkButton(user: user)
              ],
            ),
            const SizedBox(height: 16),
            Container(
              height: 100,
              color: ETColors.darkGreen,
            ),
            const SizedBox(height: 16),
            Text(
              user.description ?? "",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: ETTextStyles.montSemiBold.copyWith(fontSize: 16),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 100,
              height: 30,
              child: ETButton(
                onClick: () => onTap?.call,
                label: "Get in touch",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BookmarkButton extends StatelessWidget {
  const _BookmarkButton({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    final isBookmarked =
        context.watch<BookmarkRepository>().isUserBookmarked(user);
    return IconButton(
      icon: Icon(isBookmarked ? Icons.bookmark : Icons.bookmark_border),
      onPressed: () => isBookmarked
          ? context.read<BookmarkRepository>().removeUser(user)
          : context.read<BookmarkRepository>().addUser(user),
    );
  }
}
