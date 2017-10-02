# soundControllerMBP

## prerequests
- only support OSX now
- assume __brew__ and __pip__ are installed 

## installation
```bash
    bash install.sh
```
Note that:
1. You need to type your Password due to __sudo pip install soundmeter__ in install.sh
2. If __sudo: pip: command not found__ appears, try substituing pip with pip2 in install.sh and running it again

## usage
- Lower your MBP's output volume once the input volume is high (here 400 in [RMS value](https://en.wikipedia.org/wiki/Root_mean_square)). This is useful when you are shy to __stand out__ in a relatively quite (working) environment.
- Increase your MBP's output volume if you can barely hear its voice. Here the threshold is set at 100 RMS.
```bash
    # on some pane
    soundmeter -t +400 -a exec -e sh/decrSound.sh

    # on some other pane
    soundmeter -t -100 -a exec -e sh/incrSound.sh
```

## TODO
- still too naive that I can imagine certain bugs myself
