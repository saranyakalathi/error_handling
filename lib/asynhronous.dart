void fetchData() async {
  try {
    final result = await fetchSomeData();
    print("Data: $result");
  } catch (e) {
    // Handle the exception.
    print("Error: $e");
  }
}

Future<String> fetchSomeData() async {
  throw Exception("An error occurred during data fetching.");
}

void main() {
  fetchData();
}
