# Pistol_Pilferer
### A custom character for _Take and Hold_ in _H3VR_

<https://github.com/DesiQuintans/Pistol_Pilferer>

## Summary 

Guards at supply points (the yellow/red ones with backpacks) drop new pistols.

Sell unwanted pistols to get tokens for attachments and healing.

Supports pretty much all pistol mods on Thunderstore.

**This character is balanced for SPAWNLOCKED AMMO and NO TARGETS only.**

Plays best in small maps with multiple routes and limited sightlines such as 
'[Hotel Hotlink][hotel]' (sirpotatos) and '[Sanctuary][sanct]' (Muecke).


## Tips for players

1.  The penalty for taking damage is heavy (health = 6 tokens, and each supply 
    point gives you only 3 guns to sell), and the roaming patrols keep constant 
    pressure on you. Playing this character effectively is about hitting supply 
    points hard and evading the patrols where you can.

2.  Sosigs don't have much health, so your gun's calibre doesn't really matter. 
    Surviving holds requires you to shoot accurately at gaps in sosig armour, 
    and to do it quickly so that you can clear enemies before they pile up. 

3.  Don't forget your smoke grenade. Use it to block dangerous sightlines and 
    to smoke sosig spawn points to draw them into the open.
    
4.  A grapple gun and two flashlight attachments are provided free at the start 
    of the game, so grab them if you need them for the map you're playing.

5.  Each category in the shop has only one kind of item. I hand-picked the item 
    in each category so that it works well with any pistol, such as the 
    suppressor being low so that it won't cover your pistol's iron sights. 
    The items are:
    
        - Rail adapter:     Muzzle-mounting 4-way rail
        - Barrel extender:  Short extender
        - Muzzle brake:     Cutts Compensator
        - Suppressor:       Maxim Small B
        - Reflex sight:     Compact red-dot (square window)
        - Pistol stock:     TSA-G (adjustable-length stock)
        - Laser module:     Tactical Laser 3 (with bottom rail)
        - Foregrip:         Valk (small, looks foldable)
        - Shield:           Ballistic shield (with viewing window)
        - Health:           Health sausage

6.  Sosigs have low base health, but better-armoured sosigs are a little 
    tougher and behave more aggressively. All sosigs sneak and crawl faster in
    general. Better sosigs shoot sooner, resist more damage, are harder to stun
    and suppress, and stay stunned and suppressed for a shorter time (they're
    braver because of their armour).
    
7.  Supply point guards can't move, and can't really fight back against you if 
    you shoot them fast enough. This is sort of a hack to make sure that they 
    don't leave the supply points so you don't have to go hunting for them.


---

## Frequently Asked Questions

### How do new modded guns get added to Pistol Pilferer?

They're added by name using scripts that I run. The scripts retrieve the 
metadata of the guns, use that metadata to group the guns into loot pools, and 
then I update those loot pools in the mod.

## Why don't I ever see a modded gun that I have installed appear as loot?

You could just be unlucky and not have had it drop yet. There are a few other 
possibilities, though:

1.  The mod is new and I haven't updated the character to use it.
2.  The mod's author did not fill out the gun's metadata properly. My loot pool
    script needs the fields FirearmSize, FirearmAction, FirearmFeedOptions, 
    FirearmFiringModes, Capacity, MinCapacityRelated, MaxCapacityRelated, and 
    DoesUseSpeedLoader to all be filled out. FirearmSize needs to be Pocket or 
    Pistol, and only pistols and cartridges in the set 'Real' are used by
    this character.
3.  The mod **is** in the loot pool, but only one of the cosmetic variants is 
    listed. I only list one cosmetic variant per mod.
4.  In rare cases, guns may not be fun to use or they may be too good for the
    game. For example, I support the FTW_Arms_P50 pistol (it fires from a P90 
    magazine), but I removed its full-auto variant.

---

## CHANGELOG

## v0.0.7 (2022-03-31)
-   Add dependencies for mods that add lots of handguns, or which add handguns
    that are important to gameplay progression.
-   Reduce Hold timer by 10 seconds.
-   Change Hold 5 boss sosig's loadout: Now carries a baton and an incendiary 
    grenade. Changed his welder's mask for a gas mask -- a ballistic shield AND
    a welder's mask was a little tricky to deal with.
-   Updated loot tables to add support for:

    - SR1MP
    - ICA_Silverballers
    - PR_15_Ragun
    - FNX_45_Tactical
    - L8-Revoler [sic]
    - FTW_Arms_MP_Shield
    - FTW_Arms_Micro_Deagle (both micro and mini variants)
    - SigSauerP226Series
    - Taran_Tactical_2011
    - SIG_M17
    - Bailiff_410
    - PBPISTOL

## v0.0.6 (2022-03-29)
- Initial release.


---

[hotel]: <https://h3vr.thunderstore.io/package/sirpotatos/Hotel_Hotlink/>
[sanct]: <https://h3vr.thunderstore.io/package/Muecke/Sanctuary/>

