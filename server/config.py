# config.py
from pydantic_settings import BaseSettings
from dotenv import load_dotenv

load_dotenv()  # Load the .env file before anything else

class Settings(BaseSettings):
    TAVILY_API_KEY: str=""
    GEMINI_API_KEY: str=""


