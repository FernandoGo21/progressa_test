INSERT INTO auth_user (
    id, password, last_login, is_superuser, username, first_name, last_name, email,
    is_staff, is_active, date_joined
)
VALUES (
    1,
    'pbkdf2_sha256$1000000$xT9T5dkFQA59LOhAidM1qv$T6SDK+DfmV4O1Uj4Iqjt31sAhMev5HElzgv+IKRgp78=',
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
(5, 'Crear vista de tareas', 'Listar tareas por usuario.', NOW(), '2025-07-24 08:00:00', 'COMPLETED', 1, 10),
(6, 'Validaciones de formulario', 'Agregar validaciones a los campos.', NOW(), '2025-07-25 13:45:00', 'PENDING', 1, NULL),
(7, 'Asociar personajes', 'Seleccionar personajes desde modal.', NOW(), '2025-07-26 09:00:00', 'IN_PROGRESS', 1, 18),
(8, 'Estilizar con Bootstrap', 'Aplicar estilos base a los formularios.', NOW(), '2025-07-27 17:30:00', 'COMPLETED', 1, NULL),
(9, 'Agregar paginación', 'Limitar resultados de personajes.', NOW(), '2025-07-28 15:20:00', 'PENDING', 1, NULL),
(10, 'Escribir README', 'Incluir instrucciones y dependencias.', NOW(), '2025-07-29 11:15:00', 'IN_PROGRESS', 1, NULL);
(11, 'Estudiar Django', 'Revisar modelos y vistas.', NOW(), '2025-07-20 14:00:00', 'PENDING', 1, NULL),
(12, 'Implementar login', 'Crear vista de autenticación.', NOW(), '2025-07-21 10:00:00', 'IN_PROGRESS', 1, 3),
(13, 'Diseñar base de datos', 'Esquematizar relaciones entre entidades.', NOW(), '2025-07-22 12:30:00', 'PENDING', 1, NULL),
(14, 'Integrar Rick & Morty API', 'Mostrar personajes y asociarlos.', NOW(), '2025-07-23 16:00:00', 'IN_PROGRESS', 1, 7),
(15, 'Crear vista de tareas', 'Listar tareas por usuario.', NOW(), '2025-07-24 08:00:00', 'COMPLETED', 1, 10),
(16, 'Validaciones de formulario', 'Agregar validaciones a los campos.', NOW(), '2025-07-25 13:45:00', 'PENDING', 1, NULL),
(17, 'Asociar personajes', 'Seleccionar personajes desde modal.', NOW(), '2025-07-26 09:00:00', 'IN_PROGRESS', 1, 18),
(18, 'Estilizar con Bootstrap', 'Aplicar estilos base a los formularios.', NOW(), '2025-07-27 17:30:00', 'COMPLETED', 1, NULL),
(19, 'Agregar paginación', 'Limitar resultados de personajes.', NOW(), '2025-07-28 15:20:00', 'PENDING', 1, NULL),
(20, 'Escribir README', 'Incluir instrucciones y dependencias.', NOW(), '2025-07-29 11:15:00', 'IN_PROGRESS', 1, NULL);
(21, 'Estudiar Django', 'Revisar modelos y vistas.', NOW(), '2025-07-20 14:00:00', 'PENDING', 1, NULL),
(22, 'Implementar login', 'Crear vista de autenticación.', NOW(), '2025-07-21 10:00:00', 'IN_PROGRESS', 1, 3),
(23, 'Diseñar base de datos', 'Esquematizar relaciones entre entidades.', NOW(), '2025-07-22 12:30:00', 'PENDING', 1, NULL),
(24, 'Integrar Rick & Morty API', 'Mostrar personajes y asociarlos.', NOW(), '2025-07-23 16:00:00', 'IN_PROGRESS', 1, 7),
(25, 'Crear vista de tareas', 'Listar tareas por usuario.', NOW(), '2025-07-24 08:00:00', 'COMPLETED', 1, 10),
(26, 'Validaciones de formulario', 'Agregar validaciones a los campos.', NOW(), '2025-07-25 13:45:00', 'PENDING', 1, NULL),
(27, 'Asociar personajes', 'Seleccionar personajes desde modal.', NOW(), '2025-07-26 09:00:00', 'IN_PROGRESS', 1, 18),
(28, 'Estilizar con Bootstrap', 'Aplicar estilos base a los formularios.', NOW(), '2025-07-27 17:30:00', 'COMPLETED', 1, NULL),
(29, 'Agregar paginación', 'Limitar resultados de personajes.', NOW(), '2025-07-28 15:20:00', 'PENDING', 1, NULL),
(30, 'Escribir README', 'Incluir instrucciones y dependencias.', NOW(), '2025-07-29 11:15:00', 'IN_PROGRESS', 1, NULL);
(31, 'Estudiar Django', 'Revisar modelos y vistas.', NOW(), '2025-07-20 14:00:00', 'PENDING', 1, NULL),
(32, 'Implementar login', 'Crear vista de autenticación.', NOW(), '2025-07-21 10:00:00', 'IN_PROGRESS', 1, 3),
(33, 'Diseñar base de datos', 'Esquematizar relaciones entre entidades.', NOW(), '2025-07-22 12:30:00', 'PENDING', 1, NULL),
(34, 'Integrar Rick & Morty API', 'Mostrar personajes y asociarlos.', NOW(), '2025-07-23 16:00:00', 'IN_PROGRESS', 1, 7),
(35, 'Crear vista de tareas', 'Listar tareas por usuario.', NOW(), '2025-07-24 08:00:00', 'COMPLETED', 1, 10),
(36, 'Validaciones de formulario', 'Agregar validaciones a los campos.', NOW(), '2025-07-25 13:45:00', 'PENDING', 1, NULL),
(37, 'Asociar personajes', 'Seleccionar personajes desde modal.', NOW(), '2025-07-26 09:00:00', 'IN_PROGRESS', 1, 18),
(38, 'Estilizar con Bootstrap', 'Aplicar estilos base a los formularios.', NOW(), '2025-07-27 17:30:00', 'COMPLETED', 1, NULL),
(39, 'Agregar paginación', 'Limitar resultados de personajes.', NOW(), '2025-07-28 15:20:00', 'PENDING', 1, NULL),
(40, 'Escribir README', 'Incluir instrucciones y dependencias.', NOW(), '2025-07-29 11:15:00', 'IN_PROGRESS', 1, NULL);
(41, 'Estudiar Django', 'Revisar modelos y vistas.', NOW(), '2025-07-20 14:00:00', 'PENDING', 1, NULL),
(42, 'Implementar login', 'Crear vista de autenticación.', NOW(), '2025-07-21 10:00:00', 'IN_PROGRESS', 1, 3),
(43, 'Diseñar base de datos', 'Esquematizar relaciones entre entidades.', NOW(), '2025-07-22 12:30:00', 'PENDING', 1, NULL),
(44, 'Integrar Rick & Morty API', 'Mostrar personajes y asociarlos.', NOW(), '2025-07-23 16:00:00', 'IN_PROGRESS', 1, 7),
(45, 'Crear vista de tareas', 'Listar tareas por usuario.', NOW(), '2025-07-24 08:00:00', 'COMPLETED', 1, 10),
(46, 'Validaciones de formulario', 'Agregar validaciones a los campos.', NOW(), '2025-07-25 13:45:00', 'PENDING', 1, NULL),
(47, 'Asociar personajes', 'Seleccionar personajes desde modal.', NOW(), '2025-07-26 09:00:00', 'IN_PROGRESS', 1, 18),
(48, 'Estilizar con Bootstrap', 'Aplicar estilos base a los formularios.', NOW(), '2025-07-27 17:30:00', 'COMPLETED', 1, NULL),
(49, 'Agregar paginación', 'Limitar resultados de personajes.', NOW(), '2025-07-28 15:20:00', 'PENDING', 1, NULL),
(50, 'Escribir README', 'Incluir instrucciones y dependencias.', NOW(), '2025-07-29 11:15:00', 'IN_PROGRESS', 1, NULL);
(51, 'Estudiar Django', 'Revisar modelos y vistas.', NOW(), '2025-07-20 14:00:00', 'PENDING', 1, NULL),
(52, 'Implementar login', 'Crear vista de autenticación.', NOW(), '2025-07-21 10:00:00', 'IN_PROGRESS', 1, 3),
(53, 'Diseñar base de datos', 'Esquematizar relaciones entre entidades.', NOW(), '2025-07-22 12:30:00', 'PENDING', 1, NULL),
(54, 'Integrar Rick & Morty API', 'Mostrar personajes y asociarlos.', NOW(), '2025-07-23 16:00:00', 'IN_PROGRESS', 1, 7),
(55, 'Crear vista de tareas', 'Listar tareas por usuario.', NOW(), '2025-07-24 08:00:00', 'COMPLETED', 1, 10),
(56, 'Validaciones de formulario', 'Agregar validaciones a los campos.', NOW(), '2025-07-25 13:45:00', 'PENDING', 1, NULL),
(57, 'Asociar personajes', 'Seleccionar personajes desde modal.', NOW(), '2025-07-26 09:00:00', 'IN_PROGRESS', 1, 18),
(58, 'Estilizar con Bootstrap', 'Aplicar estilos base a los formularios.', NOW(), '2025-07-27 17:30:00', 'COMPLETED', 1, NULL),
(59, 'Agregar paginación', 'Limitar resultados de personajes.', NOW(), '2025-07-28 15:20:00', 'PENDING', 1, NULL),
(60, 'Escribir README', 'Incluir instrucciones y dependencias.', NOW(), '2025-07-29 11:15:00', 'IN_PROGRESS', 1, NULL);