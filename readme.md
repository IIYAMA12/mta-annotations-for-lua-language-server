
# Definition files for the Lua-Language-Server extension
The files in this repo allows you to use Lua-Language-Server extension for MTA san resources.

* [Feature list of Lua-Language-Server](https://luals.github.io/)
* [More info about annotations](https://luals.github.io/wiki/annotations/)
* [Possible text editors support](https://microsoft.github.io/language-server-protocol/implementors/tools/)

## How to use the definition files?
- [ ] In the extension settings you can set a destination folder for the definition files.
[More info](https://luals.github.io/wiki/settings/#workspacelibrary) 

If that doesn't work / can't find it. Just drop the definition folder right in your project.

- [ ] Make sure to set the correct Lua runtime version in the extension config, for MTA it is: Lua 5.1
![Lua 5.1](images/mta-version.png)

- [ ] Disable the following diagnostic for your work files (you can also do it globaly in the workspace)
```Lua
---@diagnostic disable: lowercase-global
```

- [ ] When creating definition files, disable the following diagnostic for those specific files
```Lua
---@diagnostic disable: missing-return
```


## Repo for Lua-Language-Server extension can be found here:
https://github.com/LuaLS/lua-language-server


## Known issues
- Serverside syntax is not separated from clientside syntax. But you can force it for specific functions.
```Lua
outputChatBox--[[@as outputChatBox_server]]("Serverside", player)
```
- Make sure to always have an empty new line at the end of your files. See [issue](https://github.com/LuaLS/lua-language-server/issues/2326).

## Other
- The extension is not as clever as typescript, there are some points in your code were you need to use @cast:

```Lua
if type(name) ~= "" then return end
---@cast name string 
```

- There are probably some mistakes in it. If you come across those, just go to the type definition and fix it. Self service for now!

## Credits
Many thanks to Subtixx's [dataset](https://github.com/Subtixx/vscode-mtalua/tree/master). These saved me a lot of time creating all those definitions. 


Many thanks to the community for all the syntax and descriptions.

## For the newest version?
[MTA annotations for Lua-Language-Server](https://gitlab.com/IIYAMA12/mta-annotations-for-lua-language-server)
