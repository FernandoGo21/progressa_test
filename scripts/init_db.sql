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