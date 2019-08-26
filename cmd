###### 轉成qiime2 imput  需要manifest檔(pe-33 manifest)
qiime tools import --type 'SampleData [PairedEndSequencesWithQuality]' --input-path pe-33-manifest  --output-path paired-end-demux.qza --input-format PairedEndFastqManifestPhred33
