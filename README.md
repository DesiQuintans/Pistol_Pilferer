# Pistol_Pilferer
### A custom character for _Take and Hold_ in _H3VR_

Submit issues and requests here: <https://github.com/DesiQuintans/Pistol_Pilferer>

## Summary 

Guards at supply points (the yellow/red ones with backpacks) drop new pistols.

Sell unwanted pistols to get tokens for attachments and healing.

Enemies die instantly when they are shot in unarmoured spots. Sosigs wear better armour as the game progresses.

Supports pretty much all pistol mods on Thunderstore.

**This character is balanced for SPAWNLOCKED AMMO and NO TARGETS only.**

Plays best in small/mid maps with multiple routes and limited sightlines such as '[Hotel Hotlink][hotel]' (sirpotatos) and '[Sanctuary][sanct]' (Muecke).

## Tips for players

1. The penalty for taking damage is heavy, and the roaming patrols keep constant pressure on you. Playing this character effectively is about hitting supply points hard and evading the patrols where you can.
2. Sosigs don't have much health, so your gun's calibre doesn't really matter. Surviving holds requires you to shoot accurately at gaps in sosig armour, and to do it quickly so that you can clear enemies before they pile up.
3. Don't forget your smoke grenade. Use it to block dangerous sightlines and to smoke sosig spawn points to draw them into the open.
4. A grapple gun and two flashlight attachments are provided free at the start of the game, so grab them if you need them for the map you're playing.
5. Each category in the shop has only one kind of item. I hand-picked the item in each category so that it works well with any pistol, such as the suppressor being low so that it won't cover your pistol's iron sights. The items are:
    
        - Rail adapter:     Muzzle-mounting 4-way rail
        - Barrel extender:  Short extender
        - Muzzle brake:     Cutts Compensator
        - Suppressor:       Maxim Small A
        - Bayonet:          GrillFork (muzzle-mounted)
        - Reflex sight:     Compact red-dot (square window)
        - Claymore:         Laser claymore mine
        - Pistol stock:     TSA-G (adjustable-length stock)
        - Laser module:     Tactical Laser 3 (with bottom rail)
        - Foregrip:         Mini (small and cylindrical)
        - Shield:           Ballistic shield (with viewing window)
        - Health:           Health sausage

6. Sosigs have low base health, but better-armoured sosigs behave more aggressively. All sosigs sneak and crawl faster in general. Better sosigs shoot sooner, are harder to stun and suppress, and stay stunned and suppressed for a shorter time (they're braver because of their armour).
7. Supply point guards can't move, and can't really fight back against you if you shoot them fast enough. This is sort of a hack to make sure that they don't leave the supply points so you don't have to go hunting for them.


---

## Pertinent Questions

## Why don't I see some of my modded pistols appear as loot?

You could just be unlucky and not have had it drop yet. There are a few other possibilities, though:

1. The mod is new and I haven't updated the character to use it.
2. The mod's author did not fill out the gun's metadata properly. My loot pool script needs the fields FirearmSize, FirearmAction, FirearmFeedOptions, FirearmFiringModes, Capacity, MinCapacityRelated, MaxCapacityRelated, and DoesUseSpeedLoader to all be filled out. FirearmSize needs to be Pocket or Pistol, and only pistols and cartridges in the set 'Real' are used by this character.
3. The mod **is** in the loot pool, but only one of the cosmetic variants is listed. I only list one cosmetic variant per mod.
4. In rare cases, guns may not be fun to use or they may be too good for the game. For example, I support the FTW_Arms_P50 pistol (it fires from a P90 magazine), but I removed its full-auto variant.


---


## CHANGELOG

## v1.3.0 (2022-04-10)

Thanks to jeditobiwan for [playing Pistol Pilferer again](https://www.twitch.tv/videos/1450964540)! An excellent run, and great moves dodging around cover in the last hold.

- Add F12 (from Update 102) to loot pool. I was very tempted to add the new Uzi Nano as a joke, but it would actually be **too good** for this one-hit-kill character once you added a stock and muzzle brake to it.

- Remove PX4 Storm and G19 from Lv1 loot pool. Their capacity was far too high for Lv1. They're now in Lv3.

- Move PR15 and M9A1 from Lv3 pool to Lv2 pool.

- Remove Mini and Micro Deagles (FTW_Arms_Micro_Deagle) from all loot pools. I found the sights very hard to use, so the guns weren't competitive against other guns in the same loot pool.

- Slow SpawnCadence in the very last hold (Hold 5B) by 1 second. This is the only hold where Lv4 Shield sosigs spawn as leaders (they are random spawns in Endless Holds), so I wanted to be a little bit kinder here since the player has already come so far. But not too kind ;)

- Standardise damage resistances across sosig levels.

- Tweak damage multipliers, damage resistances, and sosig link integrity further. Previously, sosigs could kill each other in a chain reaction where the flying body parts of one sosig could hit and kill another. I made sosigs immune to blunt, melee, and cutting damage to prevent this.

- Update manifest descriptions.


## v1.2.1 (2022-04-07)

- Increase cost of 1-token purchases to 2 tokens. I got my cost balancing spreadsheet formulas wrong and made them too cheap.


### v1.2.0 (2022-04-07)

- Reduce Sosig mustard to 10 from 50 to make them bleed out faster.

- Double the multipliers on the damage that sosigs take so that they more reliably explode from head shots (and sometimes from body shots, depending on round power).

- Replace the foregrip model (the Valk) with the Mini (much smaller).

- Allow all shop items to spawn at any level. Previously some items (shield, laser, stock) were gated to only appear at Lv3 onwards.

- Add Claymore laser mine to shop as a high-priced item.

- Rearrange shop item categories so that (for example) multiple muzzle accessories don't spawn all at once.


### v1.1.0 (2022-04-05)

- Major rethinking of loot drop pools:
    
    - Starter weapons are now the worst auto- or double-action revolvers, rather than pocket pistols. Starting with mag-fed pistols was too good and led to me skipping the revolvers nearly every time.
    - Pocket pistols are folded into Lv0's pool to give players a better chance of getting a mag-fed pistol before Hold 1. Nearly half of Lv0's pool is box mag or stripper-fed pistols now.
    - Rearranged the pools to take advantage of pistols that share magazines. Starting from Lv1, four pistol systems can drop: M1911 .45 compatible, Glock 9x19mm compatible, Glock .40 compatible, and Beretta 9x19mm compatible. Newer models of guns in these systems can spawn as the game progresses. Each of these also has a machine pistol equivalent that has a chance to spawn at Lv4. This means that you can try to plan your build around a particular magazine type as well as calibre.
    - Add support for [FTW Arms SA Hellcat](https://h3vr.thunderstore.io/package/Andrew_FTW/FTW_Arms_SA_Hellcat/) mod.

- More forgiving Hold wave spawn timing in the early game. Instead of all Holds having a wave spawn delay of 9 seconds, Holds now have a delay of 14-10 seconds depending on level.

- Reduce LinkIntegrity further. All links were weakened, but this change was done to make the chest links easier to explode in particular.

- Note that even though API and Incendiary ammo are blacklisted in the character, that they can still spawn in through the AmmoReloader panel. Issue here: <https://github.com/devyndamonster/TakeAndHoldTweaker/issues/96>.

- Phase out obsolete (lightly-armoured) sosigs in patrols as the game progresses.

- Fixed cases where Level 4 sosigs sometimes didn't wear welding masks

- Removed gas mask from Level 4 Shield bosses -- they're already tough enough.

- Made Level 4 Shield bosses carry an incendiary grenade 50% of the time instead of 100%.

- Continued tweaks to the economy to shrink it as much as possible.

    - Cost of health and ballistic shield raised to 4, from 2.
    - Clearing a Hold no longer awards you with any tokens.



### v1.0.0 (2022-04-03)

Thanks to [Jeditobiwan](https://www.twitch.tv/jeditobiwan/) for playing my character! This character doesn't fit your usual play style, but you adapted wonderfully, and I got a bunch of ideas about what I can change about Pistol Pilferer to make it play more smoothly.

- Shrink character's economy to streamline gameplay and drive more interesting decisions.

    - Reduced number of supply points to 2, down from 2-3 depending on level.
    - Reduced lootable sosigs per supply point to 2, from 3. This means that 20 guns will drop throughout the game, down from 39.
    - Clearing a Hold now awards you with 1 token.
    - Token costs of most items reduced to 1 from 3. Magazine upgrader costs are, unfortunately, not adjustable at this time.
    - Token cost of health and ballistic shield reduced to 2, from 6 and 9 respectively.
    - Rail adapter and barrel extension are allowed to go on sale from Lv0.
    
- Remove Pocket1906 from the starting pool.

- Add Bergmann Simplex to the starting pool.
    
- Add Meats_ASP to dependencies. The ASP is one of the few semi-auto pistols that can drop at Level 0 so I wanted it to be installed for sure, plus it's a great mod.

- Reduce patrol size from 5 to 4. Patrols should be dangerous and harrassing, but not deadly.

- Change PatrolCadence to slowly ramp up over the course of the game. The maximum level has the current cadence, 42 seconds, and the lowest level has 50 seconds. This allows some grace to players at the early game.

- Increase WarmupTime to 7 seconds from 5 seconds. A little bit more time to reload and get ready at the start of a Hold.

- Loadout sosigs with handguns and machine pistols only. This one comes from a Twitch chat comment where someone suggested that playing in a larger map might work better, and Jedit speculated that it wouldn't help because some of the sosigs have rifles and they would have an advantage over you.

- Reduce StartingLinkIntegrity greatly. Jedit kept double-tapping enemies to get the visual feedback of their links exploding before moving on, even though the enemies were already dead. This habit probably killed him a few times, so I made the links very weak so that they would explode immediately.

- Match LinkDamage and LinkStagger multipliers to the base game. 

- Rearrange starting item spawns. All non-random items (grapple gun, smoke grenade, flashlights) spawn on the table. The random starting pistol spawns in a pistol case.

- Remove LCR variants from starting gun pool. 4 out of 10 pistols in this pool were LCRs, so players were more likely to get LCRs than anything else.

- Change EnemyType guarding Holds to that level's boss enemy. This change gives players a sneak peek of the upcoming Hold's toughest enemy type.

- Phase out obsolete enemy types as game progresses. Before this change, all previous enemy types could spawn in a Hold, e.g. at Lv3 Hold, Lv0, Lv1, and Lv2 sosigs could spawn, led by a Lv3 sosig leader. This diluted the spawning pool and made the game easier. Now, obsolete sosigs will stop spawning. At Lv3 Hold, for example, only Lv2 sosigs led by Lv3 leaders will spawn.

- Move "M1912P16" to Lv0 loot pool to improve your chance of getting a semi-auto at the start of the game.

- Add bayonet to shop panel. It's the GrillFork because that one seemed to poke sosigs the most easily and consistently compared to the other muzzle- mounted bayonet options.


### v0.0.9 (2022-04-02)

- Add support for [PSM pistol](https://h3vr.thunderstore.io/package/devyndamonster/PSM/).

- Change all encryptions to regenerative (to encourage people to play on No Targets mode).
    

### v0.0.8 (2022-04-01)

- Blacklist Incendiary, Armour-Piercing Incendiary, and High Explosive ammo.

- Change suppressor from "MaximSilencerSmallB" to "MaximSilencerSmallA".

- Change starter weapons. In the end, after much playtesting, I found that it wasn't very enjoyable to start with single-action revolvers. It just wasn't appropriate for the enemy numbers. Instead, I think that this is a good place to put handguns that I found myself immediately selling and never using: The pocket pistols, the LCRs, the Union French, and so on.

- Reduce sosig health to 50 from 100. In line with changing the starter weapons to pocket pistols, I am reducing sosig health by half. The intention of this character was always to have one-hit kills with any gun, with the challenge being to shoot for gaps in armour quickly and accurately. I think that 50 health should be a good balance between the starter guns being useful (1-2 shots to kill) while still incentivising the player to switch for a more powerful gun that will give them that guaranteed one-hit kill.

- Update the loot pool.


### v0.0.7 (2022-03-31)

- Add dependencies for mods that add lots of handguns, or which add handguns that are important to gameplay progression.

- Reduce Hold timer by 10 seconds.

- Change Hold 5 boss sosig's loadout: Now carries a baton and an incendiary grenade. Changed his welder's mask for a gas mask -- a ballistic shield AND a welder's mask was a little tricky to deal with.

- Updated loot tables to add support for:

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

### v0.0.6 (2022-03-29)

- Initial release.


---

[hotel]: <https://h3vr.thunderstore.io/package/sirpotatos/Hotel_Hotlink/>
[sanct]: <https://h3vr.thunderstore.io/package/Muecke/Sanctuary/>

