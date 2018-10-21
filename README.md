# homefiles
Files from my home directory that I'm likely to reuse across machines.

## Compatibility

* Linux Mint 19
* Ubuntu 18.04

## Usage

### First time setup on a fresh machine

* Download https://raw.githubusercontent.com/fernandoacorreia/homefiles/master/init
* run `bash ./init`

### Post-setup

* Restart or log off for user profile changes to take full effect.
* Set Chrome as the default browser.
* Ignore (revert) redundant PATH settings for cargo and n that were added during setup.

### Update after pulling a new version or making changes

```
~/homefiles/setup
```

## Testing

To run in a disposable Docker container:

```
docker run --rm -it -v $(pwd):/root/homefiles ubuntu:16.04 bash
/root/homefiles/setup
```

## Inspiration

* http://dotfiles.github.io/
* https://github.com/alrra/dotfiles
* https://github.com/jacobwgillespie/dotfiles
* https://github.com/mathiasbynens/dotfiles
* https://github.com/michaeljsmalley/dotfiles
* https://github.com/necolas/dotfiles
* https://github.com/nicksp/dotfiles
* https://github.com/paulirish/dotfiles
* https://github.com/thoughtbot/dotfiles
* https://github.com/webpro/awesome-dotfiles
