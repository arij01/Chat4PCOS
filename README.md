# Chat4PCOS

## Setup Instructions

### Prerequisites
![Uploading Screenshot 2024-12-26 230830.png…]()

- Python 3.8 or higher
- Node.js and npm
- Neo4j database

### Backend Setup

1. **Clone the repository:**
    ```sh
    git clone <repository-url>
    cd <repository-directory>
    ```

2. **Create a virtual environment and activate it:**
    ```sh
    python -m venv venv
    source venv/bin/activate  # On Windows, use `venv\Scripts\activate`
    ```

3. **Install the required Python packages:**
    ```sh
    pip install -r requirements.txt
    ```

4. **Set up the Neo4j database:**
    - Start your Neo4j database.
    - Load the data from [script.cypher](http://_vscodecontentref_/27) and [relationships_queries.cypher](http://_vscodecontentref_/28) into the Neo4j database.


6. **Run the FastAPI server:**
    ```sh
    python api.py
    ```

### Frontend Setup

1. **Navigate to the frontend directory:**
    ```sh
    cd frontend
    ```

2. **Install the required npm packages:**
    ```sh
    npm install
    ```

3. **Start the React development server:**
    ```sh
    npm start
    ```

### Running the Application

- Open your browser and navigate to `http://localhost:3000` to interact with the Chat4PCOS application.

## Additional Information

- The backend server runs on `http://127.0.0.1:8000`.
- The frontend React application runs on `http://localhost:3000`.
- Ensure that the Neo4j database is running and accessible at `bolt://localhost:7687`.
