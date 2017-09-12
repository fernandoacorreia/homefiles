# setup-my-machine
Automated scripts to set up my machines.

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
