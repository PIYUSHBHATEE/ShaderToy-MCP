FROM python:3.11-slim

WORKDIR /app

# Copy requirements or install dependencies directly
RUN pip install mcp requests

# Copy source code
COPY src/ ./src/

# Set environment variable (will be overridden at runtime)
ENV SHADERTOY_APP_KEY=""

# Expose port if needed (MCP typically doesn't need external port)
# EXPOSE 8000

# Run the MCP server directly
CMD ["python", "src/ShaderToy-MCP/server.py"]
