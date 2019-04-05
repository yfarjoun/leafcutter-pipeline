alias snakejob='snakemake -j -u cluster.yaml --cluster-sync "bsub -K -J $(basename $(pwd)):{rule}:{wildcards} -P {cluster.project} -q {cluster.queue} -m {cluster.partition} -n {cluster.cores} -R \"span[hosts=1] select[mem>{cluster.mem}] rusage[mem={cluster.mem}]\" -W {cluster.time} -L /bin/bash -oo .snakejob/{rule}:{wildcards}.stdout -eo .snakejob/{rule}:{wildcards}.stderr < "'
