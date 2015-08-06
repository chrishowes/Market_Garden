## Market_Garden

###### Research & development with:
1. React + Flux + all-SVGs-all-the-time style
2. Concurrency with WebWorkers (want to build games that activates all your cores)
3. Audio. Comprehensive UI development strategy indicates must implement interface on this cognitive channel ; _(when the hardware supports it I guess we'll be doing tactile and olfactory stuff too_) .





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