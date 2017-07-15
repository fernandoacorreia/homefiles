# setup-my-machine
Automated scripts to set up my machines.

## Usage

```
./setup
```

## Testing

To test in a Docker container:

```
docker run --rm -it -v $(pwd):/mnt/setup-my-machine ubuntu:16.04 /mnt/setup-my-machine/setup
```
