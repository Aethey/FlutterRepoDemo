enum IssueSortType {
  created, // descending
  updated, // ascending
  comments //descending
}

extension IssueSortTypeValue on IssueSortType {
  
  String get param {
    switch (this) {
      case IssueSortType.created:
        return 'created';
      case IssueSortType.updated:
        return 'updated';
      case IssueSortType.comments:
        return 'comments';
    }
  }
}
