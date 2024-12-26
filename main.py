# from fastapi import FastAPI, HTTPException
# from fastapi.middleware.cors import CORSMiddleware
# from pipeline import generate_response, generate_model_response
# from pydantic import BaseModel
# import uvicorn

# # Initialization
# app = FastAPI()

# # Add CORS middleware
# app.add_middleware(
#     CORSMiddleware,
#     allow_origins=["http://localhost:3000"],  
#     allow_credentials=True,
#     allow_methods=["*"],
#     allow_headers=["*"],
# )

# class UserQuery(BaseModel):
#     query: str

# # FastAPI endpoint
# @app.post("/ask")
# def ask_question(user_query: UserQuery):
#     try:
#         db_response = generate_response(user_query.query)
#         model_response = generate_model_response(user_query.query, db_response)
#         return {
#             "database_information": db_response,
#             "ai_model_response": model_response
#         }
#     except Exception as e:
#         raise HTTPException(status_code=500, detail=str(e))

# if __name__ == '__main__':
#     uvicorn.run(app, host="0.0.0.0", port=8000)
