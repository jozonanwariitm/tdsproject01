 # This is the file of project 
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["GET", "POST"],
    allow_headers=["*"],
)

@app.get("/")
def home():
    return {"message": "Vay TDS Tuesday is awesome."}

@app.get("/read")
def read_file(path: str):
    try :
        with open(path,"r") as f:
            return f.read()
    except Exception as e :
        raise 

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)