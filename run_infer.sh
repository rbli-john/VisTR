CUDA_VISIBLE_DEVICES=0 python inference.py --masks \
  --model_path /home/us000110/codebases/models_pretrained/GitHub/vistr/vistr_r101.pth \
  --backbone resnet101 \
  --save_path results/results.json \
  --ann_path /nfs/AI/SegDepth/data/vis/annotations/valid.json \
  --img_path /nfs/AI/SegDepth/data/vis/valid/JPEGImages
