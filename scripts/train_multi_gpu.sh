CODE_ROOT="$PWD"
CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 python train_multi_gpu.py \
                        distributed.torch_distributed_debug=False \
                        distributed.find_unused_parameters=False \
                        distributed.world_size=8 \
                        distributed.init_method=tmp \
                        model.ratios=[8,5,4,2] \
                        common.save_interval=1 \
                        common.test_interval=1 \
                        common.max_epoch=50 \
                        common.log_interval=1000 \
                        common.amp=False \
                        datasets.tensor_cut=24000 \
                        datasets.batch_size=8 \
                        datasets.num_workers=8 \
                        datasets.train_csv_path=${CODE_ROOT}/datasets/libritts960_train_all.csv \
                        datasets.test_csv_path=${CODE_ROOT}/datasets/libritts_test_all.csv \
                        lr_scheduler.warmup_epoch=1 \
                        optimization.lr=3e-4 \
                        optimization.disc_lr=3e-4 \
                        checkpoint.save_folder=/modelblob/users/v-zhikangniu/models/encodec_ratios8542_libritts960_normFalse_bs8_tensorcut24k_loss_retain_graph \
                        hydra.run.dir=/modelblob/users/v-zhikangniu/models/encodec_ratios8542_libritts960_normFalse_bs8_tensorcut24k_loss_retain_graph