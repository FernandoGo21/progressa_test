DO
$$
BEGIN
   IF NOT EXISTS (
      SELECT FROM pg_database WHERE datname = 'progressadb'
   ) THEN
      CREATE DATABASE progressadb;
   END IF;
END
$$;