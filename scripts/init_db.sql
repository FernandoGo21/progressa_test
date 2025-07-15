INSERT INTO auth_user (
    id, password, last_login, is_superuser, username, first_name, last_name, email,
    is_staff, is_active, date_joined
)
VALUES (
    1,
    'pbkdf2_sha256$1000000$NQfa6NFPA5MwGr7NEB4fX6$D2jq0SQmjd+W2YwYCmaS2qjAc8UEXKSZOTiTlp2H3C4=',
    NOW(), 
    FALSE, 
    'demo', 
    '', 
    '', 
    'demo@example.com',
    FALSE, 
    TRUE, 
    NOW()
);

INSERT INTO tasks_task (
    id, title, description, created_at, expiration_date, state, user_id, rick_and_morty_character_id
) VALUES
(1, 'Estudiar Django', 'Revisar modelos y vistas.', NOW(), '2025-07-20 14:00:00', 'PENDING', 1, NULL),
(2, 'Implementar login', 'Crear vista de autenticación.', NOW(), '2025-07-21 10:00:00', 'IN_PROGRESS', 1, 3),
(3, 'Diseñar base de datos', 'Esquematizar relaciones entre entidades.', NOW(), '2025-07-22 12:30:00', 'PENDING', 1, NULL),
(4, 'Integrar Rick & Morty API', 'Mostrar personajes y asociarlos.', NOW(), '2025-07-23 16:00:00', 'IN_PROGRESS', 1, 7),
(5, 'Crear vista de tareas', 'Listar tareas por usuario.', NOW(), '2025-07-24 08:00:00', 'COMPLETED', 1, 10);