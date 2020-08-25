nvidia-docker run \
  -e NVIDIA_VISIBILE_DEVICES=all \
  --ipc=host \
  -v "${PWD}:/fastbook" \
  -p 8888:8888 \
  fastbook \
  jupyter notebook --allow-root --ip 0.0.0.0 --no-browser --NotebookApp.token='' --NotebookApp.password=''
