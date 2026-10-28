#!/bin/bash
# Starts the Screenify MCP server over stdio.
#
# This plugin carries no binary. The server is the `screenify` command-line tool that ships
# inside the Screenify Studio app, so this script only finds it and hands over.
# Nothing is downloaded or installed.
for candidate in "$HOME/.screenify/bin/screenify" \
                 "/Applications/Screenify Studio.app/Contents/MacOS/screenify"; do
  if [ -x "$candidate" ]; then
    exec "$candidate" mcp
  fi
done

echo '{"jsonrpc":"2.0","id":null,"error":{"code":-32000,"message":"Screenify Studio not found. Install it from https://www.screenify.studio/download (version 2.2.0 or newer), then restart this session."}}'
exit 1
