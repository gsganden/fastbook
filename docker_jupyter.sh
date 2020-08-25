nvidia-docker run \
  -e NVIDIA_VISIBILE_DEVICES=all \
  --ipc=host \
  -v "${PWD}:/fastai" \
  -p 8888:8888 \
  -v $PRODUCT_IMAGE_DIR:/images/ \
  fastai \
  jupyter lab --allow-root --ip 0.0.0.0 --no-browser --NotebookApp.token='' --NotebookApp.password=''
