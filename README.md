# homefiles
Files from my home directory that I'm likely to reuse across machines.

## Compatibility

* Linux Mint 18.2
* Ubuntu Server 16.04

## Usage

```
~/homefiles/setup/run
```

## Testing

To run in a disposable Docker container:

```
docker run --rm -it -v $(pwd):/root/homefiles ubuntu:16.04 bash
/root/homefiles/setup/run
```
