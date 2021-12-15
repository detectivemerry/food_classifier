This study aims to observe the speed difference between CPU and CPU computation for Image classification through an experiment, closely based on this paper.
The experiment will train 3 different Convolutional Neural Network (CNN) models to recognize images of 3 types of food - Okayu Don, Salmon and Satay. The training time for these models were then recorded for CPU and GPU respectively.

Memory constraints
Using the exact parameters for the models listed in the paper results in a Resource Exhaust Error - when the GPU is running out of memory and unable to allocate memory for tensors. There are several ways to solve this, and I’ve opted to reduce the batch size to 4 as it only affects the model training time and not the model parameters and results.

The replicated models are found in Experiment.ipynb while the Model with transfer learning, Model 4 is found in Model_4.ipynb

Student model
The accuracy is heavily affected by the number of data available to the model - more data means that the model will be able to train on more samples and achieve a higher accuracy. However, as we’ve already self-sourced the first 760 images on Google search engine, we observe that the quality of the pictures drops significantly the deeper you search for it - Satay images showing more and more kebab pictures, for example.

To improve on the model accuracy and training time, model 4 is proposed.
Accuracy
There are several methods to achieve a higher accuracy for the models, in model 4, we will change the model parameters and implement transfer learning. Transfer learning is the reuse of a pre-trained model on a new problem. For this food classification problem, we have selected to use the Mobile Net V2 CNN model from Google AI.
Training Time
In addition, we have added a call back to the model, such that the training will stop if the loss did not improve for 2 consecutive epochs.
