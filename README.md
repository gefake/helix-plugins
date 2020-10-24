# GeFake Helix Plugins
## [Ranks for characters](https://i.imgur.com/etWsee0.png)

### Usage

**Add Ranks table into faction you need**
```lua
FACTION.Ranks = {
    [1] = {"Private", "icon16/medal_bronze_1.png", CLASS_RECRUIT, true}
}
```

Let's look at the table in more detail:

`"Recruit"` name of the rank

`"icon16/medal_bronze_1.png"` icon, used in PopulateCharacterInfo (tooltip). If you don't need this, just set nil

`CLASS_ELITE` class (you need put class index), sets when rank changed. If you don't need this, just set nil

`true` Boolean for high ranks. "true" means that a player can assign ranks to other players. If you don't need this, just don't set anything

**The finished table looks like this:**

```lua
FACTION.Ranks = {
    [1] = {"Private", nil, CLASS_RECRUIT},
    [2] = {"Corporal", nil, CLASS_RECRUIT},
    [3] = {"Specialist", nil, nil},
    [4] = {"Sergeant", "icon16/medal_bronze_1.png", CLASS_OFFICER},
    [5] = {"Master Sergeant", "icon16/medal_silver_1.png", CLASS_SENIOR, true},
    [6] = {"Sergeant Major", "icon16/medal_gold_1.png", CLASS_SENIOR, true}
}
```

###  Commands

`/CharSetRank` -- Chat command ONLY for admins. If you need set rank for any character, use this.

----------------------------------

`/CharRaise` -- Chat command for everyone. Player may raise a character if:

   1. The client rank is lower than the target rank
   2. Client character rank has the fourth true expression in the rank table `( [6] = {"Sergeant Major", nil, nil, true} )`
   3. Client faction == Target faction
   4. Client != target

### Functions

Plugin has function called when character rank changed

**You need add this into your faction:**
```lua
function FACTION:OnRankChanged(client, oldValue, value)
    --- Do something ---
end
```
