# Screenify Studio — MCP server

**Every other screen-related MCP server lets an AI *look at* your screen. This one lets it
*make a video*.**

Ask Claude, Claude Code or Cursor for a demo and get back a finished file — recorded, styled
and exported. No terminal, no flags, no editor.

> "Record a 12-second demo of my landing page and put it on a café desk mockup."

Everything runs locally on your Mac. Nothing is uploaded.

https://github.com/user-attachments/assets/8c753dcb-0e53-4c00-acd6-0cd934b19415

<sub>Asked in a chat window; recorded, styled and exported by Screenify. No editor was opened.</sub>

## What it can do

Connect it to an AI assistant and ask for the finished video instead of driving the editor
yourself:

- record a screen, window, area, simulator or a web page
- style the export — wallpapers, device mockups, photo mockups, auto-zoom, cinematic effects
- add camera moves and effects to the moments that matter
- add animated titles — and keep the ones you made in the app when exporting
- open a video or image you already have and style that instead
- export to mp4, mov, gif or webp, with platform presets

Everything runs locally on your Mac. Nothing is uploaded.

## Install

**Requires [Screenify Studio](https://www.screenify.studio/download) 2.2.0 or newer.** The bundle
carries no binary — it launches the CLI that ships inside the app.

### Claude Desktop — one click

Download [`screenify.mcpb`](https://github.com/ScreenifyStudio/screenify-mcp/releases/latest/download/screenify.mcpb)
and open it. Claude Desktop installs the connector.

### Any other MCP client

Open **Screenify Studio → Settings → AI Assistants → Connect AI assistants**. It registers the
server with every AI client it finds on your Mac. Or from a terminal:

```sh
screenify mcp install
```

### From a registry

Screenify is listed in the [official MCP registry](https://registry.modelcontextprotocol.io)
as `studio.screenify/screenify`, so clients that read the registry can find and install it
without any of the steps above.

## Docs

- [MCP server guide](https://www.screenify.studio/docs/cli/mcp)
- [CLI docs](https://www.screenify.studio/docs/cli)

## Privacy Policy

Full policy: **https://www.screenify.studio/privacy**

In short, for this MCP server specifically:

- **What it collects** — nothing. The server runs locally on your Mac and exposes tools to an MCP
  client you already trust. It has no telemetry of its own.
- **Where your data goes** — recordings, projects and exported videos stay on your Mac, in your
  recordings folder and wherever you ask for the output. Nothing is uploaded by the server.
- **Third parties** — none for the recording and export tools. Two features reach out only when you
  explicitly use them: web recording fetches the URL you ask for, and the optional AI-director
  effects call the AI provider whose API key you supplied.
- **Retention** — the server keeps nothing after a job finishes; the files it produced are yours to
  keep or delete.
- **Contact** — support@screenify.studio

## Support

Issues with the MCP server or the app: [support@screenify.studio](mailto:support@screenify.studio)

## License

This repository — the MCP bundle (`screenify.mcpb`: a manifest, a launcher script and an icon)
and its documentation — is [MIT licensed](LICENSE).

**Screenify Studio itself is proprietary software** and is not covered by that license. The app
provides the MCP server, the recording pipeline and the export engine; this repo only ships the
small bundle that launches it.
