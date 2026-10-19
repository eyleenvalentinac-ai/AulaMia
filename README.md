# 🎒 AulaMIA
> *"La IA que entiende tu aula y te ayuda a enseñar"*

**Proyecto Académico:** Técnicas de Inteligencia Artificial para la Educación  
**Equipo:** 2 estudiantes de Licenciatura en Tecnología  

---

## 🌟 ¿Qué es AulaMIA?

**AulaMIA** es una plataforma educativa integral con inteligencia artificial contextual diseñada para docentes de básica primaria, secundaria y media. A diferencia de un generador genérico de texto o actividades que pregunta *"¿Qué actividad quieres crear?"*, AulaMIA **primero conoce y memoriza el contexto real de tu aula**:
- Grado y edades promedio
- Número de estudiantes y tiempos de clase
- Recursos físicos y digitales disponibles (computadores, proyector, material concreto, conectividad)
- Ritmos de aprendizaje y diversidad del grupo
- Ajustes razonables y apoyos pedagógicos (**DUA: Diseño Universal para el Aprendizaje**) sin etiquetas clínicas ni diagnósticos médicos.

### 🧭 Principio Rector AulaMIA
> **"La IA genera propuestas contextualizadas; el docente valida, adapta y decide con su criterio pedagógico."**

```
CONTEXTO DEL AULA ➔ MOTOR IA AulaMIA ➔ PROPUESTA PEDAGÓGICA ➔ REVISIÓN DEL DOCENTE ➔ EXPERIENCIA DE APRENDIZAJE
```

---

## 🚀 Inicio Rápido en Windows

### Opción 1: Ejecución con 1 Clic (Recomendada)
Simplemente haz doble clic sobre el archivo:
```bash
iniciar_aulamia.bat
```
El script detectará el entorno de Node.js, iniciará el servidor y abrirá automáticamente tu navegador en `http://localhost:3000`.

### Opción 2: Ejecución manual por terminal
```bash
node backend/server.js
```
Luego abre en tu navegador: [http://localhost:3000](http://localhost:3000)

### 👤 Credenciales de Acceso Demo
Si deseas probar la plataforma de inmediato sin registrarte, puedes usar las credenciales precargadas o hacer clic en el botón verde **"Acceder como Docente Demo"**:
* **Correo:** `profesor@aulamia.edu.co`
* **Contraseña:** `docente123`

---

## 🗂️ Organización y Agrupación Inteligente de Categorías

Para ofrecer una experiencia limpia, intuitiva y visualmente atractiva, los módulos del brief se han organizado en **suites pedagógicas coherentes**:

| Suite / Categoría Agrupada | Funcionalidades y Recursos Incluidos |
| :--- | :--- |
| **📋 1. Planificación Curricular** | • Planeaciones didácticas de clase estructuradas.<br>• Secuencia metodológica: **Inicio (Enganche), Desarrollo (Construcción) y Cierre (Metacognición)**.<br>• Alineación curricular con DBA y estándares de competencias. |
| **🚀 2. Experiencias y Dinámicas** | • **Actividades Multinivel:** Nivel Base (100% del grupo), Nivel Refuerzo con andamiajes guiados y Nivel Profundización (retos cognitivos superiores).<br>• Enlace con mini juegos pedagógicos. |
| **📊 3. Evaluación y Rúbricas** *(Destacado)* | • **Rúbricas Analíticas con IA:** Criterios, ponderaciones y descriptores para Superior, Alto, Básico y Bajo.<br>• **Evaluador Interactivo en Vivo:** El docente hace clic en las celdas de la rúbrica y el sistema calcula la nota ponderada (1.0 a 5.0) y genera retroalimentación cualitativa al instante.<br>• **Evaluaciones Formativas:** Cuestionarios tipo prueba Saber con clave y justificación pedagógica de distractores. |
| **📑 4. Material Didáctico Imprimible** | • Fichas de trabajo con encabezado institucional, brújula conceptual, ejercicios prácticos y semáforo de autoevaluación.<br>• Guías paso a paso para el estudiante listas para exportar a PDF o imprimir. |
| **🧩 5. Motor DUA de Inclusión Transversal** | • Botón diferencial **"Adaptar para mi aula"**: Reestructura cualquier recurso para responder a las barreras observadas (instrucciones fragmentadas, apoyo visual, lectura fácil, pausas activas). |
| **🎮 6. Mini Juegos Gamificados** | • **Trivia Interactiva:** Con cronómetro (20s), pistas pedagógicas, puntajes y confeti.<br>• **Memorama Conceptual:** Asociación de conceptos y definiciones con volteo de tarjetas animado.<br>• **Ruleta de Retos:** Selección aleatoria de dinámicas activas de aula. |
| **📈 7. Métricas y Ahorro Docente** | • Registro de horas ahorradas en planificación.<br>• Medición del **Índice de Pertinencia Pedagógica** (1 a 5 estrellas con comentarios de retroalimentación post-exportación). |

---

## 🏗️ Arquitectura Técnica del Proyecto

```
AulaMIA/
├── backend/
│   ├── config.js               # Parámetros de servidor, base de datos y seguridad
│   ├── db.js                   # Base de datos persistente SQLite nativa (node:sqlite)
│   ├── auth.js                 # Criptografía scrypt, sesiones seguras y middleware
│   ├── aiEngine.js             # Motor pedagógico contextual (Bloom, DUA, DBA, Rúbricas)
│   ├── routes/
│   │   ├── authRoutes.js       # Registro, login, verificación de sesión y perfil
│   │   ├── classroomRoutes.js  # CRUD de contexto y perfil de aulas
│   │   ├── resourceRoutes.js   # Generación de planes, actividades y adaptación DUA
│   │   ├── rubricRoutes.js     # Generador, editor y evaluador de rúbricas analíticas
│   │   ├── gameRoutes.js       # Generador de trivias, memoramas y ruletas
│   │   └── metricRoutes.js     # Indicadores de tiempo ahorrado y calidad pedagógica
│   └── server.js               # Servidor REST HTTP nativo y despachador de archivos estáticos
├── frontend/
│   ├── index.html              # Aplicación SPA responsiva con diseño visual pedagógico
│   ├── css/
│   │   └── styles.css          # Estilos personalizados, animaciones de tarjetas e impresión
│   └── js/
│       ├── api.js              # Cliente de consumo HTTP para la API
│       ├── auth.js             # Controlador de sesiones y autenticación
│       ├── classrooms.js       # Gestor del contexto del aula y barra activa
│       ├── resources.js        # Gestor de planeaciones, actividades y fichas
│       ├── rubrics.js          # Diseñador y evaluador interactivo de rúbricas
│       ├── games.js            # Motor jugable interactivo en el navegador
│       ├── metrics.js          # Tablero de analíticas docentes y ahorro
│       └── app.js              # Enrutador y coordinador principal de vistas
├── iniciar_aulamia.bat         # Lanzador automático de 1 clic para Windows
├── BRIEF DEL PROYECTO (borrador).docx # Documento base del requerimiento
└── README.md                   # Documentación completa del proyecto
```

---

## 🔒 Consideraciones Éticas y Privacidad

Siguiendo las pautas de las secciones 06 y 07 del brief:
1. **Sin datos sensibles de menores:** AulaMIA trabaja con características pedagógicas generales del aula (número de alumnos, grado, estilo de trabajo), sin solicitar identificaciones oficiales ni datos privados de niños y niñas.
2. **Sin diagnósticos clínicos:** La plataforma no patologiza ni etiqueta a los estudiantes con diagnósticos médicos; se enfoca en **barreras para el aprendizaje y la participación** y en la provisión de **apoyos y ajustes razonables (DUA)**.
3. **Supervisión humana garantizada:** El docente revisa, edita e imprime las propuestas generadas por la IA según su conocimiento directo de los estudiantes.
