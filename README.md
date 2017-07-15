# setup-my-machine
Automated scripts to set up my machines.

## Compatibility

* Linux Mint 18.2
* Ubuntu Server 16.04

## Usage

```
./setup
```

## Testing

To run in a disposable Docker container:

```
docker run --rm -it -v $(pwd):/mnt/setup-my-machine ubuntu:16.04 bash
/mnt/setup-my-machine/setup
```
