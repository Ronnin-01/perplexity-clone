# Perplexity Clone - AI Chat Application

A full-stack clone of Perplexity.ai built using **Flutter** for the frontend and **FastAPI** for the backend. This app offers real-time AI-driven chat functionality, source-based answers, and smooth markdown rendering — powered by Gemini LLM.

---

## ✨ Features

### Frontend (Flutter)
- Clean and responsive **Home UI**
- Real-time **chat interface** using **WebSockets**
- Markdown rendering for LLM responses
- Loading skeletons for better UX
- Cross-platform support: Web, Android, and iOS

### Backend (FastAPI - Python)
- REST and WebSocket-based chat API
- Source search using cosine similarity & embeddings
- Integration with Gemini LLM for response generation
- FastAPI WebSocket server for streaming AI replies
- Basic prompt engineering for context-aware chats

---

## 🛠️ Technologies Used

### Frontend:
- Flutter
- Dart
- WebSockets
- Markdown package
- Provider / Riverpod / BLoC (as applicable)

### Backend:
- FastAPI
- Python 3.10+
- LangChain / SentenceTransformers / OpenAI or Gemini API
- WebSockets (via FastAPI)
- Pydantic

---

## 🚀 Getting Started

### Prerequisites

#### Backend
- Python 3.10+
- `pip` or `poetry`
- Gemini or OpenAI API key (for LLM access)

#### Frontend
- Flutter SDK
- Dart SDK
- Android/iOS/Web emulator or device

---

## 🧪 Backend Setup (FastAPI)

```bash
cd server
python -m venv venv
source venv/bin/activate  # or venv\Scripts\activate on Windows
pip install -r requirements.txt
uvicorn main:app --reload
