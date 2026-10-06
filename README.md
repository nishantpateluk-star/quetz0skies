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

## Playable dinosaurs

Pick one on the start screen, or switch at any time with the **Switch dinosaur** button, the **1 / 2 / 3** keys, or **Esc** to reopen the menu.

| | Quetzalcoatlus | Tyrannosaurus rex | Velociraptor |
| --- | --- | --- | --- |
| Moves | Flies, lands, walks on all fours | Runs up to 29 km/h | Sprints up to 50 km/h |
| Space | Take off | Roar and bite; nearby herds scatter | Leap and bite |
| Hunted by | All carnivores when flying low | Nothing | T. rex, Allosaurus, Spinosaurus |

## Controls

| Platform | Turn | Up | Down |
| --- | --- | --- | --- |
| Keyboard | Left / Right arrows (or A / D) | Climb, or run on the ground (Up arrow / W) | Dive, or back up on the ground (Down arrow / S) |
| Touch | Drag the on-screen pad left / right | Drag up | Drag down |

**Landing and walking.** Fly low over land and the Quetzalcoatlus flares, slows and touches down on its hind feet. On the ground it walks the way the real animal did: on all fours, with the folded wings planted as forelimbs and the long neck held upright. Up walks, Down backs up, Left / Right turn. You cannot land on water.

**Taking off.** Press Space (or tap the Take off button on touch screens). The animal crouches, vaults off its forelimbs and powers upward with deep wingbeats until it reaches flying speed.

Stay high near the meat-eaters. If you fly low over a T. rex, Spinosaurus or Velociraptor it will chase you and lunge to snap you out of the air. They never actually catch you, but you will know about it.

## Running locally

Everything is self-contained and works offline. Keep `index.html` and `three.min.js` in the same folder and open `index.html` in a browser.

## Deploying

The game is hosted on Cloudflare as a standalone static-assets Worker (free tier). `wrangler.toml` holds the configuration and `deploy.cmd` stages the two files into `public/` and runs `wrangler deploy`. You need to be logged in with `npx wrangler login` first.

## Tech

- [Three.js](https://threejs.org/) r158 (classic script build, bundled as `three.min.js` so it loads from a plain file)
- Procedural terrain, textures, sky shader and creature models, all generated at load time; no external assets
- Single HTML file, no build step
