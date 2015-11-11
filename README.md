# Dotfiles for mac os x

## Install

    $ ./install-mac

## Tmux tips

### Create each workspace like a card

* C-b c: create new window(new card)
* C-b ,: (re)name it
* C-b n, p: move around it(shuffle around the card)

### Divide the card into different spaces

* C-b S, V: split pane

### Make copy and paste work with mac os x

    $ brew install reattach-to-user-namespace

Use the settings in the `tmux.conf`

### Use vim-tbone to send vim line to pane    

`:Twrite 1` will send the line in the vim to tmux pane

