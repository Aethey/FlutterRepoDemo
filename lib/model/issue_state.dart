import 'package:flutter_git_repo_demo/common/config.dart';
import 'package:intl/intl.dart';

enum IssueState { open, closed, all, sinceLastYear, allTime }

extension IssueStateValue on IssueState {
  String get value {
    switch (this) {
      case IssueState.open:
        return 'open';

      case IssueState.closed:
        return 'closed';

      case IssueState.all:
        return 'all';

      case IssueState.sinceLastYear:
        DateTime now = new DateTime.now();
        DateTime since = new DateTime(now.year - 1, now.month, now.day);
        return DateFormat(Config.dateFormat).format(since);

      case IssueState.allTime:
        return '';
    }
  }
}
