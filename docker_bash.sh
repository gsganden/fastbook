nvidia-docker run \
  -it \
  -e NVIDIA_VISIBILE_DEVICES=all \
  --ipc=host \
  -v "${PWD}:/fastbook" \
  -p 8888:8888 \
  fastbook \
  bash
