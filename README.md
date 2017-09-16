# homefiles
Files from my home directory that I'm likely to reuse across machines.

## Compatibility

* Linux Mint 18.2
* Ubuntu 16.04

## Usage

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
