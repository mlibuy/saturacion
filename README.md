# Simulador de Gestión Hospitalaria

Herramienta educativa interactiva para la clase de **Gestión y Administración en Salud**.
Desarrollada por **Matías Libuy**.

## Contenido

- **Pestaña 1 — Urgencia:** muestra cómo se satura una Unidad de Emergencia según el flujo de pacientes y la disponibilidad de camas río abajo. Incluye tres escenarios (A base normal, B óptima, C colapso), camas ajustables por servicio y los indicadores clave (boarding 24 h, LWBS, derivación, ocupación).
- **Pestaña 2 — Servicio cerrado (Medicina Interna):** panel de indicadores GRD (Egresos, PM GRD, UPH, EM Bruta, IEMA, outliers, exceso de estancias, mortalidad, reingresos) con datos del caso del taller y una simulación de cuántas camas-día se liberarían al mejorar la eficiencia.

## Cómo verla

Abrir `index.html` en cualquier navegador, o visitar la versión publicada en GitHub Pages.

## Cómo publicarla

Ver el script `publicar.R` (flujo desde R con el paquete `usethis`), o subir `index.html`
a un repositorio de GitHub y activar **Settings → Pages → Deploy from a branch → main / root**.

---

*Modelo determinístico de flujo en tiempo discreto, con fines docentes. No reemplaza estadística operacional real.*
