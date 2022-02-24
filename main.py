from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def hello_nikka():
    return {"message": "Hello Nikka...!"}
