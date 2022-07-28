import 'package:excellence_teams_client/data/models/project.model.dart';
import 'package:excellence_teams_client/data/repository/bookmark.repository.dart';
import 'package:excellence_teams_client/services/services.dart';
import 'package:excellence_teams_client/ui/resources/resources.dart';
import 'package:excellence_teams_client/ui/widgets/button.dart';
import 'package:flutter/material.dart';

enum _ProjectCard {
  normal,
  contact,
  toDetails,
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  })  : onTap = null,
        _type = _ProjectCard.normal,
        super(key: key);

  const ProjectCard.contact({
    Key? key,
    required this.project,
    required this.onTap,
  })  : _type = _ProjectCard.contact,
        super(key: key);

  const ProjectCard.toDetails({
    Key? key,
    required this.project,
  })  : onTap = null,
        _type = _ProjectCard.toDetails,
        super(key: key);

  final Project project;
  final VoidCallback? onTap;
  final _ProjectCard _type;

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
                    project.title,
                    style: ETTextStyles.montHeavy.copyWith(fontSize: 22),
                  ),
                ),
                _BookmarkButton(project: project),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              height: 100,
              color: ETColors.darkGreen,
            ),
            const SizedBox(height: 16),
            Text(
              project.description ?? "",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: ETTextStyles.montSemiBold.copyWith(fontSize: 16),
            ),
            if (_type != _ProjectCard.normal) const SizedBox(height: 16),
            if (_type == _ProjectCard.contact)
              SizedBox(
                width: 100,
                height: 30,
                child: ETButton(
                  onClick: () => onTap?.call,
                  label: "Get in touch",
                ),
              ),
            if (_type == _ProjectCard.toDetails)
              SizedBox(
                width: 100,
                height: 30,
                child: ETButton(
                  // TODO add route to project details
                  onClick: () => print("open details"),
                  label: "Open project",
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
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    final isBookmarked =
        context.watch<BookmarkRepository>().isProjectBookmarked(project);
    return IconButton(
      icon: Icon(isBookmarked ? Icons.bookmark : Icons.bookmark_border),
      onPressed: () => isBookmarked
          ? context.read<BookmarkRepository>().removeProject(project)
          : context.read<BookmarkRepository>().addProject(project),
    );
  }
}
