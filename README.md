# Awesome ish
> My twist on Manilarome [floppy](https://github.com/manilarome/the-glorious-dotfiles/tree/master/config/awesome/floppy) theme 😀.
> Most of awesome themes are made from his awesome [repo](https://github.com/manilarome/the-glorious-dotfiles/).

## Changes from original theme

### Goals :
> A bit less eye candy for a bit more performances and focus.
- Keyboard centric :
  - Vim like bindings (not too much tho)
  - Hudge usage of rofi (apps, lauch, windows switch, web search)
- Unclutter visuals (no blur, no transparency, no rounded corners)
not a very big fan of visuals effects 😅
- More accessible menus (mostly directly visible on screen)
- Improve footprint (trying to stay under 600Mb of mem)

#### Gui
- Less depth for menus :
  - Restructure left pane :
    - Add System Widgets 
    - Add Exit Session 
    - Add Notifcations shortcut
    - Add app and global search widgets
  - Reserve global menu (top left corner) for :
    - System monitoring

- Restructure top pane :
  - Only reserve for music, clock, layoutbox

- Uses Tela-dark icons

- Remove some modules (dynamic wall, lockscreen)

- Don't use blur or transparency

#### Tags and Keybindings
- Essential tags : terms, web, folders, mail, multimedia, social and sandbox

- More keyboard centric
  - Remap clients keybinding to vim like

##### @Uses

- @Apps :
  - Terminal : [Kitty](https://sw.kovidgoyal.net/kitty/)
  - Launcher : [rofi-git](https://github.com/davatorium/rofi)
  - File Manager : Thunar
  - Editor : [Neovim](https://neovim.io/)
  - Gui Editor : [VS Code](https://code.visualstudio.com/insiders/)

- @Themes :
  - GTK : Plata Noir Compact
  - Icons : [Tela](https://github.com/vinceliuice/Tela-icon-theme) (dark)
  - Font : [Recursive Mono](https://github.com/arrowtype/recursive/)
