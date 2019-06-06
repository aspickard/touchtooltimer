# Touch Tool Timer

This is a second-precise timer widget for Better Touch Tool.

## Configuration

Touch Tool Timer is capable of two actions, reset (which will reset the current elapsed time) and play/pause (which
will start the timer if it is stopped, or pause the timer if it has started). At a minium, you can configure
two triggers - one for each action, with one trigger also displaying the elapsed time. You may also configure
two triggers for each action, and then one trigger that only displays elapsed time.

### Minimal Configuration

#### Create reset button
1. Create a new trigger of `Touch bar button` type.
2. Assign a new action to this trigger. Under `Action Configuration` select `Controlling Other Actions > Execute Terminal Command (Async,
   Non-Blocking)`.
3. In the `Enter Terminal Command` box, enter the path to the `reset.sh` script. ex. `/path/to/repo/reset.sh`
4. Give the new trigger an icon or label or your choosing.

#### Create play/pause button
1. Create a new trigger of `Shell Script / Task Widget` type.
2. Erase the example code and the `-c` parameter.
3. In the launch path, enter the path to the `render.sh` script. ex. `/path/to/repo/render.sh`
4. Assign a new action to this trigger. Under `Action Configuration` select `Controlling Other Actions > Execute Terminal Command (Async,
   Non-Blocking)`.
5. In the `Enter Terminal Command` box, enter the path to the `playpause.sh` script. ex. `/path/to/repo/playpause.sh`

You should now have a timer on your BTT bar that starts and stops when you tap it, and resets to zero when you
hit the reset button.

## Known Issues

When pausing / resuming, subseconds may be shaved off of the elapsed time.

## Reporting Bugs

If you have any problems or questions, feel free to open an issue in the Issue Tracker.
