## Contribution Guides

#### Some Ways to Contribute

- Report potential bugs.
- Suggest product enhancements.
- Increase our test coverage.
- Fix a bug.
- Implement a requested enhancement.

#### Pull request acceptance criteria

- All endpoints must have a Request and Response class.
- Request must implement the Requestable abstract class.
- Response must implement the Responsable abstract class.
- Naming convention: [what][type][Request/Response] (ex.: AddOnSearchRequest)
- Data class is the mapping from the incoming JSON response to Dart specific data structure.
- Data class should be placed below the Response class which uses it.
- Tests at least the `request.toJson` and `response.fromJson`
