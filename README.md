# MarioFlow

My initial plan for this project was to use a convolutional neural network to train Mario to save Princess Peach on his own. However, on further research and testing, I saw that q-learning was a better way to go; however, not being well versed with it I decided to table it for another time.

I had managed to get the data collection part of the project up and running. I used the FCEUX emulator and lua scripts to achieve this. On running the script, the emulator would take a snapshot of every frame, and pair it with the input at that frame. The algorithm would then be able to use this information while running the trained model by looking at the screen and providing the input accordingly.

The script could be used either as I played the game or on a recorded version of a run, stored in a .fm2 file. The advantage of this being I can use any (non-hack) speed run by a pro to train my model.
