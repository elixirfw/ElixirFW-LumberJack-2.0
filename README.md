# ElixirFW-LumberJack-2.0
Fully configurable FiveM Advanced Lumberjack script for QBCore
Available here: https://elixirfw.tebex.io/package/SOON

# Info
We've developed Lumberjack 2.0, offering enhanced script configurability. You now have the flexibility to customize the script extensively, incorporating features such as random rewards during processing. Whether you prefer a target or 3D text, the choice is yours – the script is fully configurable.

# Features
1. QBCore Compatibility: The script is designed to seamlessly integrate with QBCore.
2. Custom QBCore Rename: Enjoy the flexibility of customizing QBCore names through the script's configuration.
3. Full Configurability: The script offers comprehensive customization options, allowing users to tailor settings according to their preferences.
4. Open-Source and Encrypted: Choose between open-source and encrypted versions, providing flexibility and security.
5. Exclusive Tree Attachment: Prevent simultaneous tree attachment by implementing a feature that disallows multiple users from connecting to the same tree.
6. Target and 3D Text Interaction: Players can choose between using the Target system or traditional 3D Text for interactions.
7. Dynamic Tree Locations: Six tree locations with specific coordinates and status tracking prevent overlap during chopping.
8. Icons and Blips: Enhance the visual experience with icons for selling, processing, starting the job, and chopping wood.
9. Configurability: Highly configurable, allowing server administrators to customize spawn locations, ped models, blip settings, and more.
10. Item Rewards: Players have a chance to receive wood-cut items as rewards during the tree-chopping process.
11. Interact Sounds: Optional sound effects, such as a chainsaw sound, can be configured for a more immersive experience.
12. Poly Zone Boxes (Debug Mode): For debugging, the script includes a Target Debug Mode to visualize Poly Zone Boxes.
13. Fuel System Integration: Compatible with the LegacyFuel system.

# How to install
### Put Item Images in qb-inventory
* Go to ``images`` and copy all the images:
```
Now Drag and Drop the Images into your qb-inventory/html/images.
```

# Notes
- The script supports both Target and 3D Text interactions, providing flexibility for server administrators.
- Server administrators can customize various aspects of the job, including item rewards, sound effects, and spawn locations.
- Feel free to customize and integrate this lumberjack job script into your FiveM server using the QBCore framework. For more information, refer to the provided documentation.

### Add Items to qb-core
* Go to ``qb-core\shared\items.lua`` and paste this in last line before }:
```
    --- Elixir Lumberjack ----
    wood_cut                      = { name = 'wood_cut',                      label = 'Raw Wood',                          weight = 100,       type = 'item',      image = 'wood_cut.png',                  unique = false,      useable = true,     shouldClose = true,     combinable = nil, description = 'You\'ll get cuts if holding it without gloves!' },
    wood_proc                     = { name = 'wood_proc',                     label = 'Low Quality Wood',                          weight = 100,       type = 'item',      image = 'wood_proc.png',                 unique = false,      useable = true,     shouldClose = true,     combinable = nil, description = 'Market Will Except This Hopefully!' },
    wood_proc2                     = { name = 'wood_proc2',                     label = 'Medium Quality Wood',                          weight = 100,       type = 'item',      image = 'wood_proc.png',                 unique = false,      useable = true,     shouldClose = true,     combinable = nil, description = 'Market Will Except This Hopefully!' },
    wood_proc3                     = { name = 'wood_proc3',                     label = 'High Quality Wood',                          weight = 100,       type = 'item',      image = 'wood_proc.png',                 unique = false,      useable = true,     shouldClose = true,     combinable = nil, description = 'Market Will Except This Hopefully!' },
```
* Add these items to your qb-inventory > html > images, images found in images folder 

![Raw Wood](https://cdn.discordapp.com/attachments/627417439566561290/1177372559474425937/wood_cut.png) 
![Processed Wood](https://cdn.discordapp.com/attachments/627417439566561290/1177372559851933756/wood_proc.png)

### Config of elixir-lumberjack
* [Config.lua](https://nl.gta5-mods.com/maps/mlo-pet-shop)

### Support
For issues join our [Discord](https://discord.gg/xfwUFXFpNR), and we will help you asap once you create a ticket or ask for help in general-support!
