enum IssueSortDirection { ascending, descending }

extension IssueSortDirectionValue on IssueSortDirection {
  String get value {
    switch (this) {
      case IssueSortDirection.ascending:
        return 'asc';
      case IssueSortDirection.descending:
        return 'desc';
    }
  }
}
