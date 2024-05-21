from fastapi import File, UploadFile, Request, FastAPI
import os

app = FastAPI()


@app.get("/")
def read_root():
    return {"My Student ID is {}".format(os.environ["STUDENT_ID"])}


