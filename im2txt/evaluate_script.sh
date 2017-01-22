# Directory containing preprocessed MSCOCO data.
MSCOCO_DIR="C:/Tensorflow/tensorflowGPU0p12/Lib/site-packages/tensorflow/models/im2txt/im2txt/data/mscoco/word_counts_output_file/output_dir"

# Directory to save the model.
MODEL_DIR="C:/Tensorflow/tensorflowGPU0p12/Lib/site-packages/tensorflow/models/im2txt/model"


cd C:/Tensorflow/tensorflowGPU0p12/Lib/site-packages/tensorflow/models/im2txt/bazel-bin/im2txt


  # Ignore GPU devices (only necessary if your GPU is currently memory
# constrained, for example, by running the training script).
#export CUDA_VISIBLE_DEVICES=""

# Run the evaluation script. This will run in a loop, periodically loading the
# latest model checkpoint file and computing evaluation metrics.
python evaluate.py \
  --input_file_pattern="${MSCOCO_DIR}/val-?????-of-00004" \
  --checkpoint_dir="${MODEL_DIR}/train" \
  --eval_dir="${MODEL_DIR}/eval"