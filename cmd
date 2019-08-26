###### 轉成qiime2 imput  需要manifest檔(pe-33 manifest)
qiime tools import --type 'SampleData [PairedEndSequencesWithQuality]' --input-path pe-33-manifest  --output-path paired-end-demux.qza --input-format PairedEndFastqManifestPhred33
###### 把qzv檔輸出成圖片
qiime tools export --input-path ./stats-dada2.qzv --output-path ./dada2/
###### dada2
qiime dada2 denoise-paired  --i-demultiplexed-seqs paired-end-demux.qza   --p-trim-left-f 0 --p-trim-left-r 0    --p-trunc-len-f 288 --p-trunc-len-r 288  --p-n-threads 0  --o-representative-sequences rep-seqs  --o-table table --o-denoising-stats stats-dada2.qza
