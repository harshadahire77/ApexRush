# Apex Rush

A browser racing game with nitro, four cars, a coin garage, upgrades, five tracks, weather, missions, audio and online progress.

## Stack
HTML, CSS, JavaScript, Canvas, Web Audio API, Cloudflare Workers, D1, and Drizzle migrations.

## Controls
- Arrow Left/Right or A/D: steer
- Arrow Down or S: brake
- Space: nitro
- P: pause
- Enter: start/retry
- On-screen buttons: mobile controls

## Source structure
- public/: browser game and interface
- server/worker.js: Worker API and asset delivery
- db/schema.ts: database schema
- drizzle/: generated database migrations
- scripts/build.mjs: bundles assets and Worker

## Build
Install Node.js and run:

```sh
npm ci
npm run build
```

This is a server-backed game, not a standalone HTML game. Gameplay requires the API, a D1 database bound as DB, the included migrations, and authenticated user headers provided by Sites. Opening public/index.html directly or publishing it to GitHub Pages will not run the complete application. npm run build produces deployment output; it does not start a local development server.

The original private Sites deployment identity and all credentials are omitted from this export. Independent hosting requires database and authentication configuration. Never trust client-supplied identity headers on an independently hosted public Worker.

## Development
Built with AI assistance. Score submissions have basic sanity checks; the leaderboard is intended for casual play and is not a competitive anti-cheat system.
