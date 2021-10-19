import tensorflow as tf
from tensorflow.keras.models import load_model
model =load_model('Deepid saved model.h5')
model.save("DeepId saved model")