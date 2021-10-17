from tensorflow.python.compiler.tensorrt import trt_convert as trt
input_saved_model_dir="facenet saved model"
output_saved_model_dir="facenet trt model"
converter = trt.TrtGraphConverterV2(input_saved_model_dir=input_saved_model_dir)
converter.convert()
converter.save(output_saved_model_dir)