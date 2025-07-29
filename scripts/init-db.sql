-- Initialize SurfSense database with pgvector extension
-- This script runs when the PostgreSQL container starts for the first time

-- Create the pgvector extension if it doesn't exist
CREATE EXTENSION IF NOT EXISTS vector;

-- Create the database if it doesn't exist (this is handled by POSTGRES_DB env var)
-- The database creation is automatic, so we just ensure the extension is available

-- Grant necessary permissions
GRANT ALL PRIVILEGES ON DATABASE surfsense TO postgres;

-- Note: The actual database schema will be created by Alembic migrations
-- when the backend service starts and runs the migration scripts