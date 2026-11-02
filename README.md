# Vela virtual para Ekyam

Página estática para GitHub Pages. Los visitantes pueden encender la vela y enviar un deseo. Los mensajes no se muestran públicamente; la familia los consulta desde el panel de Supabase.

## Activar el guardado privado

1. Crea un proyecto en [Supabase](https://supabase.com/).
2. En el SQL Editor del proyecto, ejecuta `supabase/wishes.sql`.
3. En **Project Settings → API**, copia la Project URL y la publishable key (o la clave `anon` en proyectos antiguos).
4. En `index.html`, sustituye `PEGA_AQUI_LA_URL_DE_TU_PROYECTO` y `PEGA_AQUI_TU_CLAVE_PUBLICA` por esos dos valores.
5. Envía un deseo de prueba. La tabla `wishes` debe recibirlo; para leer los mensajes, abre **Table Editor → wishes** desde el panel de Supabase.

La clave pública se puede incluir en la página: los permisos de la tabla permiten insertar deseos, pero no leerlos desde el navegador público. **No pongas nunca una secret key ni una service_role key en `index.html`.**

## Publicar en GitHub Pages

En el repositorio, abre **Settings → Pages**, selecciona **GitHub Actions** como fuente y guarda. El flujo de trabajo de `.github/workflows/pages.yml` publicará automáticamente la página después de cada push a `main` o `master`. Para el repositorio `Jhonsho/Vela`, la dirección habitual será `https://jhonsho.github.io/Vela/`.

## Privacidad

Los visitantes deben saber que sus deseos se envían a una base de datos gestionada por la familia para su lectura privada. No se ofrecen funciones de edición o borrado en la página; esos cambios se hacen desde el panel de Supabase.
