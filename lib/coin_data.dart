import 'package:crypto_tracker/services/networking.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

String baseURL = "https://rest.coinapi.io";
String apiKey = "8424CF6D-E962-4908-8D89-652D4EDE5130";

class CoinData {
  Future<dynamic> getCoinValue(String id_base, String id_quote) async {
    var url = "$baseURL/v1/exchangerate/$id_base/$id_quote?apikey=$apiKey";

    NetworkManager manager = NetworkManager(url: url);
    var coinDate = await manager.getData();
    return coinDate;
  }
}