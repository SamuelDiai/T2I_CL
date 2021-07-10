# T2I_CL
This is the official Pytorch implementation of the paper [Improving Text-to-Image Synthesis Using Contrastive Learning](https://arxiv.org/abs/2107.02423?context=cs)


## Requirements
* Linux
* Python ≥ 3.6

* PyTorch ≥ 1.4.0


## Prepare Data



Download the preprocessed datasets from [AttnGAN](https://github.com/taoxugit/AttnGAN)

Alternatively, another site is from [DM-GAN](https://github.com/MinfengZhu/DM-GAN)


## Training
- Pre-train DAMSM models:
  - For bird dataset: `python pretrain_DAMSM.py --cfg cfg/DAMSM/bird.yml --gpu 0`
  - For coco dataset: `python pretrain_DAMSM.py --cfg cfg/DAMSM/coco.yml --gpu 0`

- Train AttnGAN:
  - For bird dataset: `python main.py --cfg cfg/bird_attn2.yml --gpu 0`
  - For coco dataset: `python main.py --cfg cfg/coco_attn2.yml --gpu 0`

- Train DM-GAN:
  - For bird dataset: `python main.py --cfg cfg/bird_DMGAN.yml --gpu 0`
  - For coco dataset: `python main.py --cfg cfg/coco_DMGAN.yml --gpu 0`

## Pretrained Models
- [DAMSM for Bird](https://drive.google.com/). Download and save it to `DAMSMencoders/`
- [DAMSM for COCO](https://drive.google.com/). Download and save it to `DAMSMencoders/`
- [AttnGAN for Bird](https://drive.google.com/). Download and save it to `models/`
- [AttnGAN for COCO](https://drive.google.com/). Download and save it to `models/`
- [DM-GAN for Bird](https://drive.google.com/). Download and save it to `models/`
- [DM-GAN for COCO](https://drive.google.com/). Download and save it to `models/`

## Evaluation
- Sampling and get the R-precision:
  - `python main.py --cfg cfg/eval_bird.yml --gpu 0`
  - `python main.py --cfg cfg/eval_coco.yml --gpu 0`

- Inception score:
  - ` python inception_score_bird.py --image_folder fake_images_bird`
  - ` python inception_score_coco.py fake_images_coco`

- FID: 
  - ` python fid_score.py --gpu 0 --batch-size 50 --path1 real_images_bird --path2 fake_images_bird`
  - ` python fid_score.py --gpu 0 --batch-size 50 --path1 real_images_coco --path2 fake_images_coco`
  - 
### Citation
If you find this work useful in your research, please consider citing:

```
@misc{ye2021improving,
      title={Improving Text-to-Image Synthesis Using Contrastive Learning}, 
      author={Hui Ye and Xiulong Yang and Martin Takac and Rajshekhar Sunderraman and Shihao Ji},
      year={2021},
      eprint={2107.02423},
      archivePrefix={arXiv},
      primaryClass={cs.LG}
}
```
