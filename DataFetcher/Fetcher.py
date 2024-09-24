import yfinance as yf

class Fetcher:
    def __init__(self, ticker_symbol):
        """
        Initializes the Fetcher with a ticker symbol.
        """
        self.ticker = yf.Ticker(ticker_symbol)

    def get_historical_data(self, period="1y", interval="1d"):
        """
        Fetches historical market data for the specified period and interval.

        :param period: str - The period of historical data, e.g., '1d', '1mo', '1y', etc.
        :param interval: str - The data interval, e.g., '1d', '1wk', '1mo', etc.
        :return: DataFrame - Historical market data.
        """
        try:
            historical_data = self.ticker.history(period=period, interval=interval)
            return historical_data
        except Exception as e:
            print(f"Error fetching historical data: {e}")
            return None

    def get_financials(self):
        """
        Fetches basic financials for the stock.

        :return: DataFrame - Financials data.
        """
        try:
            financials = self.ticker.financials
            return financials
        except Exception as e:
            print(f"Error fetching financials: {e}")
            return None

    def get_stock_actions(self):
        """
        Fetches stock actions like dividends and splits.

        :return: DataFrame - Stock actions data.
        """
        try:
            actions = self.ticker.actions
            return actions
        except Exception as e:
            print(f"Error fetching stock actions: {e}")
            return None


