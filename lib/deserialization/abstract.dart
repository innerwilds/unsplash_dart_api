part of unsplash_api;

abstract class Deserializer {
  T deserialize<T>(List<int> bytes);
}