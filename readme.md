## Market_Garden

##### Research & development with:
###### ~~1. React + Flux + all-SVGs-all-the-time style~~
######0: Flux for domain-logic + ~~React for Render~~ -- actually React is irrelevant if we're intending to webgl the whole thing.  
######1: Eschew HTML+CSS (except for proper hypertext doc applications) in favor of rendering everything with WebGL. (currently Three.js).
######1.5: Fallback to SVG-all-the-things.  We've had good results with this, only going to (1) because suspect could get even _better_ results with WebGL.
######1.8: SVG-all-the-things relies on good Immutable implementation and rendering stuff.  Eliminate uneccesary rendering.
######2. Concurrency with WebWorkers. Research how to factor out computationally intensive elements of program flow to workers.  WebGL will apparently help massively with this, in respect to the graphics rendering.  I think all that's left to optimise in this regard -- well that would depend on the game/app, any non-graphical logic.  I really have no idea how this will work out, just want to experiment and learn. Seeing that new Galaxies coming out of Samsung with 8 cores I'm thinking it would mean something substantial to have all of them spinning.  
######3. Audio. Comprehensive UI development strategy indicates must implement interface on this cognitive channel ; _(when the hardware supports it I guess we'll be doing tactile and olfactory stuff too_) .  For audio I want to do live simulation of music file channel mixed with microphone inpuut modulated by control interface .  So like when user plays game they can talk to other player over RTC but it's all distorted as function of game state, control input, etc.


###### News

-aug6-  I had enlightenment newly, it seems 

(alpha) rendering might be best through THREE.js even for Two_Dimensional apps, given the way it goes to hardware.  And actually, will probably start slipping subtle 3D stuff in.

(beta) I think the audio will need to be synthesised realtime, partly from channels associated with like user's microphone.  this means web-rtc.

(gamma) The audio is first milestone with webrtc, second milestone would be getting p2p networked play happening

(delta) Implementing best possible parallelism/concurrency strategy possible with WebWorkers remains research+develop priority.

(epsilon) Want to put translucent video overlays (music video fragments) on the background of spacewar and some museum / maze / webapp constructions.  more webrtc maybe, especially if playback is morphed realtime as a parameter of user-input / control interface activity. 

(zeta) I'm seeking grant/sponsorship funding for equipment purchase (above are hardware intensive tracks); 
**Lenovo W-541 , 32GB RAM, NVIDIA K2100-2GBRAM ,[...] basically max everything until it's $5k+.Then eta and theta come to pass.**
_(Indy For hire: I can build you apps and systems.)_


###### why yet another UI workshop

I needed to refactor deeply the MineSweeper at [Vickers](https://github.com/Terebinth/Vickers), integrating a Flux architecture or something similar.

Also needed the Flux style (or something similar) mastered for the SpaceWar game which I started doing also at [Vickers' SpaceWar branch](https://github.com/Terebinth/Vickers/tree/spacewar).

Flux is complicated enough to want to do with a from-scratch and very simple workspace; also, working from scratch gives me a chance to critically refine the techniques I started developing in Vickers.

Also, I'm continuing to explore how best to implement the repository-as-research-laboratory idea I've been working on for some time now.  This repo does that a bit differently; whereas before everything got folded up into one app, with a main navigation facility, here there are multiple folders representing completely distinct apps, serialised where appropriate.  These apps are connected by the general theme and program, and conveniently share the same node-modules folder. They have distinct webpack builds.
