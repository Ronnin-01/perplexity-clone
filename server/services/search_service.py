# services/search_service.py
from config import Settings
from tavily import TavilyClient
import trafilatura

class SearchService:
    def __init__(self):
        settings = Settings()
        self.tavily_client = TavilyClient(api_key=settings.TAVILY_API_KEY)
    def web_search(self, query: str):
        results = []
        response = self.tavily_client.search(query, max_results=10)
        search_results = (response.get("results", []))

        for result in search_results:
            downloaded = trafilatura.fetch_url(result.get("url"))
            content = trafilatura.extract(downloaded, include_comments = False)
            if content:
             results.append(
                {
                "title": result.get("title", ""),
                "url": result.get("url", ""),
                "content": content,
                }
            )

        return results    
