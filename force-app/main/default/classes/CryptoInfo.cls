public class CryptoInfo {
    public static decimal showPrice(string coinName) {
        map<string, decimal> cryptoMap = new map<string, decimal>();
        
        cryptoMap.put('BTC' , 35000);
        cryptoMap.put('ETH', 2500);
        cryptoMap.put('BMN', 304539);
        decimal price;
        price = cryptoMap.get(coinName);

            return price;
    }
}
