# Notes about character creation

## Notes about directory structure

These notes are for me to remember what I was doing months down the line.

1.  The editable files are in `src\`.

2.  Inside `src\` there is the info about the mod for Thunderstore:
     a.  `manifest.json` here is used to populate Thunderstore's user display.
     b. There's an `icon.png` that is shown to Thunderstore users.
     c. There's also a readme (copied from the root at build time) that users
        don't see, but which is required.
     d. There's also a `*_deli\` folder, which stores the actual mod data.
        
3. Inside `*_deli\`, there's info for the `deli` plugin that handles H3VR mods:
    a. `manifest.json` here is for the use of the deli plugin, tells it where 
        files are and what dependencies it has.
    b. The `folder` contains all of the character files proper.

4. Finally, inside the `folder` are the resources for the character:
    a.  `character.json` handles starting equipment, equipment pools for the
        constructor panel, number of supply points, number of patrols, and the
        enemies and timing of hold points. Remember to have a unique `TableID` 
        for leaderboards.
    b.  `Lootable_sosig_` files handle the appearance, behaviour, and loot pools
        of sosigs that drop loot. They need to have unique `SosigEnemyID` or 
        else they will be overwritten by another sosig with the same ID, even 
        if that sosig appears in a different mod!
    c.  `_sosig_` files handle sosigs that don't drop loot. Again, they need to 
        have a globally unique `SosigEnemyID`.
    d. `thumb.png` is shown to players inside the TnH lobby.
    e. `Icon_*.png` are constructor icons for the different equipment groups.
    
5.  I wrote a build batch file (`Deploy this character.bat`) that automatically
    packages the character. It needs [`rpl`][rpl] for search-replacing the
    version number tags in the files (`{{ ver }}`), and `rpl` needs to be 
    in the system path.


## NOTES ON GAMEPLAY DESIGN

This character was inspired by '[Looting_Larry][loot]' (Fez3557d4428b7f48fa), 
but redesigned to avoid my biggest complaints with that character:

1.  Any sosig can drop a gun, so I ended up looking at a sosig until it 
    despawned to see if it dropped something.
2.  More guns drop than you can carry, so you might do multiple trips 
    to the Recycler if you need the tokens.
3.  Patrols are a farmable source of guns, so it is always a good idea 
    to attack patrols. This breaks the economy.
4. The large number of guns sometimes led to choice paralysis.

Basically all of this was solved by making only supply point guards drop
new guns. They're visually distinct (wearing red and yellow) so they're 
the only sosigs you need to search for guns, only a few guns drop at a 
time, and they drop in the same room as the Recycler. It's quick and 
easy to look at them, decide if they fit your strategy, and sell them
if they don't. Since patrols never drop new guns but can cost you health, 
there is never any incentive to fight them, so they become a sort of 
roaming challenge that you can either evade or ambush. And once you've 
raided all of the supply points, you can be 100% sure that you have 
collected all of the guns available to you and that it's time to move on 
to the next Hold.

It's also far easier to balance the economy when I know the number of 
guns (=tokens) that are dropping before each hold. I look forward to 
making more characters based on Pistol Pilferer!


## Major changes to sosig speed/reaction

I made sosigs sneak as fast as they walk, and crawl at double speed versus
a default SWAT Rifleweiner: 
    
| Movement |    H3VR | Pistol_Pilferer |
|----------|---------|-----------------|
| Run      |    3.50 |            3.50 |
| Walk     |    1.40 |            1.40 |
| Sneak    |    0.60 |            1.40 |
| Crawl    |    0.30 |            0.60 |
    
The sneak speed change is to make ambushes more dangerous, and the crawl 
speed change suppressed sosigs in the open a better chance of getting to 
cover.

Better sosigs have faster reaction times, starting with the game's default 
2.00 seconds on first sighting and 1.50 seconds on repeated sightings, with a 
0.1 seconds faster reaction time as they become more elite (max is 1.60 and 
1.10 seconds respectively).

All sosigs have the default thresholds for becoming stunned, confused, and 
suppressed. However, better sosigs have lower multipliers on these, so an 
unarmoured sosig is 3x easier to suppress than a heavily armoured one, and it 
stays suppressed 3x as long.

I made supply point guards (lootable sosigs) unable to move at all by giving 
them zero movement speeds. This is so that they can only be found inside the 
supply points. Previously they would sometimes hear you and leave the supply 
point to chase you, especially on maps like Hotel Hotline where you can be 
standing on the floor directly above them, which is a very short distance.


## Notes on economy design

I made a little spreadsheet (in this repo) where I worked out how much each 
item in the shop would cost, and then thought of how many of each item I would 
buy under different circumstances, like if I was spending as little as 
reasonably possible, versus how much it would cost to max out two guns, versus
what would be a 'interesting' game where I had to skip some purchases to make
others, e.g. not buying a reflex scope so that I could buy a barrel extension
for my back-up gun. I adjusted the number of tokens in the economy until it was 
just a hair under this 'interesting' amount.

It should be noted that this approach only really works because I reduced the
variety of items in the shop so that the thing you get is non-random and always
the best item in its class for use with pistols (IMO). When you buy a 
suppressor, for example, you only get a pistol-appropriate one and not honking 
big one that block your sight picture. Characters with more random item pools 
should be budgeted so that re-rolls and re-purchases are possible. I also think 
that turning off _purchase price increments_ is a good idea for making design 
and gameplay more intuitive.

---

[rpl]: <http://gnuwin32.sourceforge.net/packages/rpl.htm>
[loot]: <https://h3vr.thunderstore.io/package/Fez3557d4428b7f48fa/Looting_Larry/>