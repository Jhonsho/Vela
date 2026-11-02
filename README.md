# Vela virtual para Ekyam

Página estática para GitHub Pages. Los visitantes pueden encender la vela y preparar un deseo para enviarlo al WhatsApp de la familia. La página no almacena los mensajes; cada visitante debe pulsar **Enviar** dentro de WhatsApp.

El número receptor se configura en `index.html` como `WHATSAPP_NUMBER`. Ese número aparece en el enlace público de WhatsApp.

## Publicar en GitHub Pages

En el repositorio, abre **Settings → Pages**, selecciona **GitHub Actions** como fuente y guarda. El flujo de trabajo de `.github/workflows/pages.yml` publicará automáticamente la página después de cada push a `main` o `master`. Dirección: `https://jhonsho.github.io/Vela/`.
