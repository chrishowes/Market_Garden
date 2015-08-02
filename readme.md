## Market_Garden

###### Research & development with:
1. React + Flux + all-SVGs-all-the-time style
2. Concurrency with WebWorkers (want to build games that activates all your cores)
3. Audio. Comprehensive UI development strategy indicates must implement interface on this cognitive channel ; _(when the hardware supports it I guess we'll be doing tactile and olfactory stuff too_) .

###### why yet another UI workshop

I needed to refactor deeply the MineSweeper at [Vickers](https://github.com/Terebinth/Vickers), integrating a Flux architecture or something similar.

Also needed the Flux style (or something similar) mastered for the SpaceWar game which I started doing also at [Vickers' SpaceWar branch](https://github.com/Terebinth/Vickers/tree/spacewar).

Flux is complicated enough to want to do with a from-scratch and very simple workspace; also, working from scratch gives me a chance to critically refine the techniques I started developing in Vickers.

Also, I'm continuing to explore how best to implement the repository-as-research-laboratory idea I've been working on for some time now.  This repo does that a bit differently; whereas before everything got folded up into one app, with a main navigation facility, here there are multiple folders representing completely distinct apps, serialised where appropriate.  These apps are connected by the general theme and program, and conveniently share the same node-modules folder. They have distinct webpack builds.