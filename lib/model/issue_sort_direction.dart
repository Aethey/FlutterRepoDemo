enum IssueSortDirection { ascending, descending }

extension IssueSortDirectionValue on IssueSortDirection {
  String get value {
    switch (this) {
      case IssueSortDirection.ascending:
        return 'ascending';
      case IssueSortDirection.descending:
        return 'ascending';
    }
  }
}
