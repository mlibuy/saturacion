# ============================================================
#  Publicar el Simulador de Gestión Hospitalaria en GitHub Pages
#  Desarrollado por Matías Libuy
#
#  Qué hace este script: toma la carpeta donde está "index.html",
#  la sube a un repositorio de GitHub y activa GitHub Pages para
#  que tus estudiantes la abran desde una URL pública.
#
#  Requisitos previos (una sola vez en tu vida):
#    - Tener cuenta en GitHub:  https://github.com/signup
#    - Tener Git instalado:     https://git-scm.com/downloads
# ============================================================

# ----- PASO 0: Instalar paquetes (solo la primera vez) -------
install.packages(c("usethis", "gitcreds", "gh"))

library(usethis)

# ----- PASO 1: Tu identidad de Git (solo la primera vez) -----
# Usa el mismo correo de tu cuenta de GitHub.
use_git_config(
  user.name  = "Matias Libuy",
  user.email = "mlibuyr@uft.edu"
)

# ----- PASO 2: Token de acceso a GitHub (solo la primera vez)-
# Esto abre el navegador y crea un "Personal Access Token".
# Marca el scope "repo" y "workflow", genera el token y CÓPIALO.
create_github_token()

# Pega el token cuando te lo pida la siguiente línea:
gitcreds::gitcreds_set()

# (Para comprobar que quedó bien configurado, puedes correr:)
# usethis::gh_token_help()


# ============================================================
#  PASO 3: Preparar la carpeta del proyecto
#
#  IMPORTANTE: tu archivo debe llamarse exactamente "index.html"
#  y estar DENTRO de la carpeta del proyecto.
#
#  Recomendación: crea una carpeta con un nombre limpio y sin
#  espacios, por ejemplo "simulador-urgencia" — ese nombre será
#  parte de la dirección web final.
# ============================================================

# Opción A: si ya tienes una carpeta con index.html dentro,
# ábrela en RStudio como proyecto (Menú: File > Open Project...)
# y SALTA a la Opción de PASO 4.

# Opción B: crear el proyecto desde cero aquí mismo.
# Descomenta y ajusta la ruta:
# usethis::create_project("~/simulador-urgencia")
# ...luego copia tu index.html dentro de esa carpeta y vuelve aquí.

# Verifica que el index.html esté presente (debe imprimir TRUE):
file.exists("index.html")


# ----- PASO 4: Subir a GitHub y publicar --------------------
# 4.1  Inicializa el repositorio Git local.
#      Cuando pregunte si quieres hacer el commit inicial: responde 1 (Yes).
use_git()

# 4.2  Crea el repositorio en GitHub y sube todo.
#      private = FALSE  -> el repo es público (necesario para Pages gratis).
use_github(private = FALSE)

# 4.3  Activa GitHub Pages sirviendo desde la raíz de la rama principal.
use_github_pages(branch = git_default_branch(), path = "/")


# ============================================================
#  LISTO. La dirección de tu página será:
#
#     https://TU-USUARIO.github.io/NOMBRE-DE-LA-CARPETA/
#
#  Ejemplo: si tu usuario es "mlibuy" y la carpeta
#  "simulador-urgencia", la URL es:
#     https://mlibuy.github.io/simulador-urgencia/
#
#  Tarda 1-2 minutos en quedar activa la primera vez.
#  use_github_pages() suele imprimir la URL exacta en la consola.
# ============================================================


# ----- Para ACTUALIZAR la página más adelante ---------------
# Cada vez que edites index.html, vuelve a subir los cambios:
#   usethis::pr_init()        # (opcional, flujo con ramas)
# o, simple, en la pestaña Git de RStudio: Commit + Push.
# La página se actualiza sola en ~1 minuto.
