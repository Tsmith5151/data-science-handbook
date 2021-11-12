# Autoencoders 
_____

## Autoencoders Overview

- The `autoencoder` is a machine learning solution made up of two blocks,
  encoder and decoder, whose  purpose is to obtain internal representations
  usually with smaller dimensionality than the input. This process is known as
  encoding. 
- For this representation to be obtained, the decoding phase is also necessary
  so that the system can  encode efficiently the input data. 
- The purpose of this block of the autoencoder is to reconstruct the input
  signal from the intermediate representation obtained by the encoder. 
- The difference between the reconstructed signal by the autoencoder and the
  original input signal is  known as the reconstruction error. 
- In essence, the autoencoder tries to learn an identity function which makes
  the output  be similar  to the input x. 
- By placing constraints on the network, such as a limitation in the number of
  hidden units, interesting structure about the data can be discovered. 
- **Example**: 
  - `Convolutional Autoencoders` are designed to encode the input into a set of
    simpler signals and reconstruct the input from them. 
  - The encoder layers are in this case convolutional layers and the decoder
    layers are called `deconvolution` or `upsampling` layers.


### LSTM Autoencoder 

- Recurrent neural networks, such as the Long Short-Term Memory, or LSTM,
  network are specifically designed to support sequences of input data.
- They are capable of learning the complex dynamics within the temporal
  ordering of input sequences as  well as use an internal memory to remember or
  use information across long input sequences.
- The LSTM network can be organized into an architecture called the
  Encoder-Decoder LSTM that allows  the model to be used to both support
  variable length input sequences and to predict or output variable length
  output sequences.
- This architecture is the basis for many advances in complex sequence
  prediction problems such as  speech recognition and text translation.
- In this architecture, an encoder LSTM model reads the input sequence
  step-by-step. After reading in  the entire input sequence, the hidden state
  or output of this model represents an internal learned representation of the
  entire input sequence as a fixed-length vector. This vector is then provided
  as an input to the decoder model that interprets it as each step in the
  output sequence is generated.
- An `LSTM Autoencoder `is an implementation of an autoencoder for sequence
  data using an Encoder-Decoder LSTM architecture.
- For a given dataset of sequences, an encoder-decoder LSTM is configured to
  read the input sequence,  encode it, decode it, and recreate it. 
- The performance of the model is evaluated based on the model’s ability to
  recreate the input  sequence.
- Once the model achieves a desired level of performance recreating the
  sequence, the decoder part of  the model may be removed, leaving just the
  encoder model. 
- This model can then be used to encode input sequences to a fixed-length vector.
