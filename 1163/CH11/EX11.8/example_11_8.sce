clear;
clc;
disp("--------------Example 11.8---------------")
// example explaination 
printf("This example shows the behaviour of Selective Repeat when a frame is lost.\n\n");
printf("Here, each frame sent or resent needs a timer, which means that the timers need to be numbered (0, 1,2, and 3).\nThe timer for frame 0 starts at the first request, but stops when the ACK for this frame arrives.\nThe timer for frame 1 starts at the second request, restarts when a NAK arrives, and finally stops when the last ACK arrives.\nThe other two timers start when the corresponding frames are sent and stop at the last arrival event.");
printf("\n\nAt the second arrival, frame 2 arrives and is stored and marked (colored slot), but it cannot be delivered because frame 1 is missing.\nAt the next arrival, frame 3 arrives and is marked and stored, but still none of the frames can be delivered.\nOnly at the last arrival, when finally a copy of frame 1 arrives, can frames 1, 2, and 3 be delivered to the network layer.\nThere are two conditions for the delivery of frames to the network layer: First, a set of consecutive frames must have arrived.\nSecond, the set starts from the beginning of the window.\nAfter the first arrival, there was only one frame and it started from the beginning of the window. After the last arrival,\nthere are three frames and the first one starts from the beginning of the window.");
printf("\n\nA NAK is sent after the second arrival, but not after the third,although both situations look the same.\nThe reason is that the protocol does not want to crowd the network with unnecessary NAKs and unnecessary resent frames.\nThe second NAK would still be NAK1 to inform the sender to resend frame 1 again; this has already been done. The first NAK sent is remembered\n(using the nakSent variable) and is not sent again until the frame slides. A NAK is sent once for each window position and defines\nthe first slot in the window.");
printf("\n\nOnly two ACKs are sent here. The first one acknowledges only the first frame; the second one acknowledges three frames.\nIn Selective Repeat, ACKs are sent when data are delivered to the network layer. If the data belonging to n frames are delivered in one shot,\nonly one ACK is sent for all of them.")