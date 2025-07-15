-- Crea la base si no existe (solo funciona desde una conexión global como postgres)
DO $$
BEGIN
   IF NOT EXISTS (
      SELECT FROM pg_database WHERE datname = 'progressadb'
   ) THEN
      CREATE DATABASE progressadb;
   END IF;
END
$$;