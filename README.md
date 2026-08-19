# Screenify Studio — MCP server

This repository hosts the installable bundle for the **Screenify Studio** MCP server.
The server itself ships inside the [Screenify Studio](https://www.screenify.studio) macOS app —
this repo exists so the bundle has a stable, public download URL for the
[MCP Registry](https://registry.modelcontextprotocol.io) and for MCP clients.

## What it does

Screenify Studio records your screen and produces studio-styled demo videos. Connect it to an AI
assistant and you can ask for the finished video instead of driving the editor yourself:

- record a screen, window, area, simulator or a web page
- style the export — wallpapers, device mockups, photo mockups, auto-zoom, cinematic effects
- add camera moves and effects to the moments that matter
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

---

Screenify Studio is proprietary software. This repository contains only the MCP bundle and its
documentation.
