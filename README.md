# Quetzalcoatlus - Cretaceous Skies

A small open-world flying game for the browser. You are a Quetzalcoatlus soaring over a Cretaceous landscape of lakes, forests and mountains, sharing the sky with Pteranodon flocks and the ground with T. rex, Spinosaurus, Velociraptor packs, Triceratops and Brachiosaurus.

## Species

| Ground | Sky | Water |
| --- | --- | --- |
| Tyrannosaurus rex, Allosaurus, Spinosaurus (hunters) | Pteranodon flocks and a migrating V formation | Mosasaurus in the big lake |
| Velociraptor and Dilophosaurus packs (hunters) | Rhamphorhynchus skimming the lakes | |
| Triceratops, Stegosaurus, Ankylosaurus | Wild Quetzalcoatlus soaring high | |
| Brachiosaurus, Diplodocus | | |
| Parasaurolophus and Gallimimus herds, Pachycephalosaurus | | |

**Play it:** https://quetzalcoatlus-skies.nishant-pateluk.workers.dev

## Controls

| Platform | Turn | Climb (flap harder) | Dive (glide) |
| --- | --- | --- | --- |
| Keyboard | Left / Right arrows (or A / D) | Up arrow (or W) | Down arrow (or S) |
| Touch | Drag the on-screen pad left / right | Drag up | Drag down |

Stay high near the meat-eaters. If you fly low over a T. rex, Spinosaurus or Velociraptor it will chase you and lunge to snap you out of the air. They never actually catch you, but you will know about it.

## Running locally

Everything is self-contained and works offline. Keep `index.html` and `three.min.js` in the same folder and open `index.html` in a browser.

## Deploying

The game is hosted on Cloudflare as a standalone static-assets Worker (free tier). `wrangler.toml` holds the configuration and `deploy.cmd` stages the two files into `public/` and runs `wrangler deploy`. You need to be logged in with `npx wrangler login` first.

## Tech

- [Three.js](https://threejs.org/) r158 (classic script build, bundled as `three.min.js` so it loads from a plain file)
- Procedural terrain, textures, sky shader and creature models, all generated at load time; no external assets
- Single HTML file, no build step
