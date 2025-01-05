from flask import Flask, request, jsonify
from datetime import datetime

# Create a Flask application
app = Flask(__name__)

# Define a route for the root URL
@app.route("/", methods=["GET"])
def home():
    # Get the current timestamp
    current_time = datetime.now().isoformat()

    # Get the visitor's IP address
    visitor_ip = request.remote_addr

    # Create the JSON response
    response = {
        "timestamp": current_time,
        "ip": visitor_ip
    }

    # Return the response as JSON
    return jsonify(response)

# Run the application
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

