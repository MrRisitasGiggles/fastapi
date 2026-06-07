#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Define root project directory name
PROJECT_NAME="generic_fastapi_app"

echo "🚀 Creating FastAPI project structure for: $PROJECT_NAME"

# 1. Create top-level project directories
mkdir -p "$PROJECT_NAME/app/api/v1/endpoints"
mkdir -p "$PROJECT_NAME/app/core"
mkdir -p "$PROJECT_NAME/app/models"
mkdir -p "$PROJECT_NAME/app/schemas"
mkdir -p "$PROJECT_NAME/app/services"
mkdir -p "$PROJECT_NAME/tests"
mkdir -p "$PROJECT_NAME/alembic"

# 2. Initialize Python packages with __init__.py files
touch "$PROJECT_NAME/app/__init__.py"
touch "$PROJECT_NAME/app/api/__init__.py"
touch "$PROJECT_NAME/app/api/v1/__init__.py"
touch "$PROJECT_NAME/app/api/v1/endpoints/__init__.py"
touch "$PROJECT_NAME/app/core/__init__.py"
touch "$PROJECT_NAME/app/models/__init__.py"
touch "$PROJECT_NAME/app/schemas/__init__.py"
touch "$PROJECT_NAME/app/services/__init__.py"
touch "$PROJECT_NAME/tests/__init__.py"

# 3. Create core application files
touch "$PROJECT_NAME/app/main.py"
touch "$PROJECT_NAME/app/api/v1/router.py"
touch "$PROJECT_NAME/app/core/config.py"
touch "$PROJECT_NAME/app/core/security.py"
touch "$PROJECT_NAME/app/core/database.py"

# 4. Create sample feature files (e.g., items)
touch "$PROJECT_NAME/app/api/v1/endpoints/items.py"
touch "$PROJECT_NAME/app/models/item.py"
touch "$PROJECT_NAME/app/schemas/item.py"
touch "$PROJECT_NAME/app/services/item_service.py"

# 5. Create configuration and deployment files
touch "$PROJECT_NAME/tests/test_items.py"
touch "$PROJECT_NAME/.env"
touch "$PROJECT_NAME/.env.example"
touch "$PROJECT_NAME/.gitignore"
touch "$PROJECT_NAME/README.md"
touch "$PROJECT_NAME/requirements.txt"
touch "$PROJECT_NAME/Dockerfile"
touch "$PROJECT_NAME/docker-compose.yml"

# 6. Populate default .gitignore file
cat <<EOT > "$PROJECT_NAME/.gitignore"
# Byte-compiled / optimized / DLL files
__pycache__/
*.py[cod]
*$py.class

# Environments
.venv/
venv/
ENV/
env/

# Configuration
.env

# IDEs
.vscode/
.idea/
EOT

# 7. Populate a basic requirements.txt file
cat <<EOT > "$PROJECT_NAME/requirements.txt"
fastapi>=0.110.0
uvicorn[standard]>=0.28.0
pydantic-settings>=2.2.0
sqlalchemy>=2.0.0
alembic>=1.13.0
pytest>=8.0.0
EOT

echo "✅ Project '$PROJECT_NAME' successfully initialized!"
echo "👉 Run 'cd $PROJECT_NAME' to get started."

