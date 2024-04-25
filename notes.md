The network takes 10 frames of
past context and a single target keyframe as inputs and produces
a smooth motion that leads to the target, on time


embedding += 
time-to-arrival 
+ scheduled target noise 

qualitive evaluation - MotionBuilder


2additive modifiers:
time-to-arrival embedding -(simillar to positional in transformer nets) number of timestamps until keyframe is reached?

scheduled-target-noise-vector - forces the recurrent layer to receive
distorted target embeddings at the beginning of long transitions.
The scheduled scaling reduces the norm of the noise during the
synthesis in order to reach the correct keyframe. This forces the
generator to be robust to noisy target embeddings. We show that it
can also be used to enforce stochasticity in the generated transitions
more efficiently than another noise-based method


dataset: Human3.6M dataset and on LaFAN1

animation, locomotion, transition gener-
ation, in-betweening, deep learning, LSTM

RNN

Input -> 
character state encoder, (FFN)
the offset encoder,(FFN)
 the target encoder.(FFN) 512hidden -> 256out (PLU activation > ReLU)

time to arrival  added to every representation

H_offset, H_target concatenated to target-noise vector
Z_target

ALL concatenated and goes to LongShortTermMemory LSTM
-> decoder (FFN 2PLU hidden layers 512 256) Linear output 
-> local quaternion and root velocities q, r
_> next character state ( extra 4  output dimmensions) contact predictions.

 ![
    
](image.png)
uzywac gotowe metryki a nie pisac samemu


LAFAN - dataset + baseline benchmarks ( linear interpolation / copying last frame ) + metric calculation 
    https://github.com/ubisoft/ubisoft-laforge-animation-dataset
    animations in BHV format 
    conversion to binary hbv https://github.com/BobbyAnguelov/FbxFormatConverter
    
    

